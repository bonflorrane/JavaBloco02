package org.generation.blogpessoal.service;

import java.nio.charset.Charset;
import java.util.Optional;

import org.apache.commons.codec.binary.Base64;
import org.generation.blogpessoal.model.Usuario;
import org.generation.blogpessoal.model.UsuarioLogin;
import org.generation.blogpessoal.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;
	
	public Optional<Usuario>cadastrarUsuario(Usuario usuario){ //o usuario conseguir ter a rota de cadastro, ser acessado pelo controller
		
		if(usuarioRepository.findByUsuario(usuario.getUsuario()).isPresent()) { // te um usuario igual a este no banco de dados?
		return Optional.empty(); // se estiver vai retomar um objeto vazio não deixando eu recadastrar
		}
		
		usuario.setSenha(criptografarSenha(usuario.getSenha()));//entrando em usuario e pegando só a senha, antes de mandar pro banco de dados a senha será criptografada
		
		return Optional.of(usuarioRepository.save(usuario));// não está presente no banco, então será salvo/cadastrado
	}
	
	public Optional <UsuarioLogin> autenticarUsuario(Optional<UsuarioLogin> usuarioLogin){
		Optional<Usuario>usuario = usuarioRepository.findByUsuario(usuarioLogin.get().getUsuario()); // verifica se o usuario existe
		if(usuario.isPresent()) {
			if(compararSenhas(usuarioLogin.get().getSenha(),usuario.get().getSenha())) {// comparando a senha digitada com a senha do banco de dados
				usuarioLogin.get().setId(usuario.get().getId());
				usuarioLogin.get().setNome(usuario.get().getNome());
				usuarioLogin.get().setFoto(usuario.get().getFoto());
				usuarioLogin.get().setSenha(usuario.get().getSenha());
				usuarioLogin.get().setToken(geradorBasicToken(usuarioLogin.get().getUsuario(),usuarioLogin.get().getSenha()));
				
				return usuarioLogin;
			}
		}
		return Optional.empty();
	}
	
	private boolean compararSenhas(String senhaDigitada, String senhaDoBanco ) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder.matches(senhaDigitada, senhaDoBanco);
	}
	
	private String geradorBasicToken(String usuario, String senha) {
		String token = usuario + ":" + senha;
		byte[] tokenBase64 = Base64.encodeBase64(token.getBytes(Charset.forName("US-ASCII"))); //passando para binário todas as letras do teclado e depois transformando novamente.
	    return "Basic "+ new String(tokenBase64);
	}
	
	private String criptografarSenha(String senha) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder.encode(senha);
	}
	
}
	

