package br.com.vagner.controller;


import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.vagner.dao.UsuarioDao;
import br.com.vagner.infra.UsuarioWeb;
import br.com.vagner.modelo.Usuario;

@Resource
public class UsuarioController {
	private final UsuarioDao dao;
	private final Result result;
	private final Validator validator;
	private final UsuarioWeb usuarioWeb;

	public UsuarioController(UsuarioDao dao, Result result, Validator validator,UsuarioWeb usuarioWeb) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		this.usuarioWeb = usuarioWeb;
	}

	@Post("/usuario")
	public void adiciona(Usuario usuario) {
	    if (dao.existeUsuario(usuario)) {
	    	validator.add(new ValidationMessage("Login já existe","usuario.login"));
	    }
	    
	    validator.onErrorUsePageOf(UsuarioController.class).novo();

	    dao.adiciona(usuario);

	    result.redirectTo(AlunoController.class).lista();
	}

	public void novo() {

	}
	
	@Get 
	public void login() {
	    
	}

	@Post("/login")
	public void login(Usuario usuario) {
		
	    Usuario carregado = dao.carrega(usuario);
	    
	    if (carregado == null) {
	    	validator.add(new ValidationMessage("Login e/ou senha inválidos","usuario.login"));
	    }
	    
	    validator.onErrorUsePageOf(UsuarioController.class).login();

	    usuarioWeb.login(carregado);

	    result.redirectTo(AlunoController.class).lista();
	 }
	
	
	public void logout() {
	    usuarioWeb.logout();
	    result.redirectTo(AlunoController.class).lista();
	}

}
