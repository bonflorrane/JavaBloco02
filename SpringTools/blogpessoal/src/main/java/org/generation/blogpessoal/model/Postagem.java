package org.generation.blogpessoal.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity //que tudo que colocar aqui irá virar uma tabela
@Table (name="tb_postagens") // serve para colocar o nome da tabela, = create table

public class Postagem {

	@Id // indica que o que vir dentro aqui será uma chave primária
	@GeneratedValue(strategy=GenerationType.IDENTITY) // responsável pelo auto_incrmento
	private Long id;
	
	@NotNull
	private String titulo;
	
	@Size(min = 4, max = 50) // define o tamanho max, min do caracter do texto
	private String texto;
	
	@UpdateTimestamp // formata a data no pradrão do note
	private LocalDate data; // pega a data no estilo americano
	
	@ManyToOne //cria tipo de relacionamento e cria a foreing key
	@JsonIgnoreProperties("postagem")//para não criar recursividade
	private Tema tema;

	

	// sem os get e set não conseguimos acessar a tabela
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}
	
	
	public Tema getTema() {
		return tema;
	}

	public void setTema(Tema tema) {
		this.tema = tema;
	}
	
	
}
