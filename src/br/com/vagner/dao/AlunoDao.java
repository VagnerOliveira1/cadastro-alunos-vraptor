package br.com.vagner.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import br.com.vagner.infra.CriadorDeSession;
import br.com.vagner.modelo.Aluno;

public class AlunoDao {
	private final Session session;

	public AlunoDao() {
		this.session = CriadorDeSession.getSession();
	}

	public void salva(Aluno aluno) {

		Transaction tx = session.beginTransaction();
		session.save(aluno);
		tx.commit();
	}

	public List<Aluno> listaTudo() {
		return this.session.createCriteria(Aluno.class).list();
	}

	public Aluno carrega(final Long id) {
		return (Aluno) this.session.load(Aluno.class, id);
	}

	public void atualiza(final Aluno aluno) {
		final Transaction tx = session.beginTransaction();
		this.session.update(aluno);
		tx.commit();
	}

	public void remove(final Aluno aluno) {
		final Transaction tx = session.beginTransaction();
		this.session.delete(aluno);
		tx.commit();
	}

	public List<Aluno> busca(String nome) {

		if (nome == null)
			return null;

		return session.createCriteria(Aluno.class).add(Restrictions.ilike("nome", nome, MatchMode.ANYWHERE)).list();

	}

	

}
