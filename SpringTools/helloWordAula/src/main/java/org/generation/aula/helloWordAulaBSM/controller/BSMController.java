package org.generation.aula.helloWordAulaBSM.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class BSMController {
	
	@GetMapping("/BSM")
	public String BSM() {
		return " Orientação ao Futuro; \nResponsabilidade Pessoal; \nMentalidade de Crescimento; \nPersistência; \nComunicação; \nProatividade; \nOrientação ao detalhe; \nTrabalho em equipe";
	}
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello World";
	}
	
	@GetMapping("/aprendizagem")
	public String aprendizagem() {
		return "Objetivos dda semana é aprender os conceitos de Spring";
	}

}
