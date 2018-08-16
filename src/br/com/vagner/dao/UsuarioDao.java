package br.com.vagner.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import br.com.vagner.infra.CriadorDeSession;
import br.com.vagner.modelo.Usuario;

public class UsuarioDao {
	private final Session session;

	public UsuarioDao() {
		this.session = CriadorDeSession.getSession();
	}
	public boolean existeUsuario(Usuario usuario) {

		Usuario encontrado = (Usuario) session.createCriteria(Usuario.class)
				.add(Restrictions.eq("login", usuario.getLogin())).uniqueResult();
		return encontrado != null;
	}

	public void adiciona(Usuario usuario) {
		Transaction tx = this.session.beginTransaction();
		this.session.save(usuario);
		tx.commit();

	}
	public Usuario carrega(Usuario usuario) {
	    return (Usuario) session.createCriteria(Usuario.class)
	      .add(Restrictions.eq("login", usuario.getLogin()))
	      .add(Restrictions.eq("senha", usuario.getSenha()))
	      .uniqueResult();
	  }

}
