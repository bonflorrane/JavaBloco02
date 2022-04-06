package org.generation.blogpessoal.security;

import java.util.Collection;
import java.util.List;

import org.generation.blogpessoal.model.Usuario;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class UserDetailsImpl implements UserDetails {

	private static final long serialVersionUID = 1L;

	private String userName;
	private String password;
	private List<GrantedAuthority> authorities;

	public UserDetailsImpl(Usuario usuario) {
		this.userName = usuario.getUsuario(); // this busca a variavel criada aqui = getusuario indo para model usuário
		this.password = usuario.getSenha();

	}

	public UserDetailsImpl() {
	} // testar a segurança, usando só usuario ou senha

	@Override // basic security ignore seu padrão e pegue o que estou definindo aqui
	public String getPassword() {
		return password;
	}

	@Override // basic security ignore seu padrão e pegue o que estou definindo aqui
	public String getUsername() {
		return userName;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}


	// funções padrões do basicsecurity
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
