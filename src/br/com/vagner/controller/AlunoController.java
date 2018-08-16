package br.com.vagner.controller;


import java.util.List;


import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

import br.com.vagner.dao.AlunoDao;

import br.com.vagner.modelo.Aluno;

@Resource
public class AlunoController {
	private final AlunoDao dao;
	private final Result result;
	private final Validator validator;
	

	public AlunoController(AlunoDao dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		
	}

	public void inicio() {
	}
	public void index() {
	}
	

	public List<Aluno> lista() {
		return dao.listaTudo();
	}

	public void adiciona(Aluno aluno) {
		validator.validate(aluno);
		validator.onErrorUsePageOf(AlunoController.class).lista();

		dao.salva(aluno);
		result.redirectTo(this).lista();
	}

	public void formulario() {

	}

	public Aluno edita(Long id) {
		return dao.carrega(id);
	}

	public void altera(Aluno aluno) {
		validator.validate(aluno);
		validator.onErrorUsePageOf(AlunoController.class).lista();
		
		dao.atualiza(aluno);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Aluno aluno = dao.carrega(id);
		dao.remove(aluno);
		result.redirectTo(this).lista();
	}
	public List<Aluno> busca(String nome) {
		
			result.include("nome", nome);
			return dao.busca(nome);
	}
	
	public void novo() {

	}
	
	
	
    
}
