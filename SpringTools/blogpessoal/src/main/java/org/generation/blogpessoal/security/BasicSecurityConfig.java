  package org.generation.blogpessoal.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity // habilita a configuração de segurança


public class BasicSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Override // para criar mais uma forma de login (usuario em memória  e usuario padrão) // auth é alias apelido para a clase AuthenticationManagerBuilder
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{ // protected a função está acessivel a todos os níeveis de segurança, todos os pacotes de segurança tem acesso ao usuario em memoria
	auth.userDetailsService(userDetailsService);
	auth.inMemoryAuthentication()
	.withUser("root")
	.password(passwordEncoder().encode("root"))
	.authorities("ROLE_USER"); // indica que root /root é um usuario na minha aplicação. Criando um usuario em memoria para ter um usuario sem cadastro sem acesso ao banco de dados, é para teste.
    
	}
	
	@Bean // = autowired, gestão de dependência, escopo local. Bean escopo global.
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();//encriptação de senha
	}
	
	@Override//permitindo duas rotas abertas cadastro e login
	protected void configure(HttpSecurity http) throws Exception{//configurando endpoints (configuração por http)
			http.authorizeHttpRequests() // antMatches independente de onde a requisição vier permitir 
			.antMatchers("usuario/logar").permitAll()
			.antMatchers("usuario/cadastrar").permitAll()//antmatcher qq metodo que vier é permitido
			.antMatchers(HttpMethod.OPTIONS).permitAll()
			.anyRequest().authenticated()
			.and().httpBasic()	//httpBasic dizendo que usa verbo e metodos http
			.and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS) // toda requição terá começo, meio e fim. deslogando o usuário e o token não valerá mais
			.and().cors() // auxiliar do cross origin. permitindo de qq rota
			.and().csrf().disable();//por padrão não deixa deletar e atualizar
	
	}
	
	
	
}




