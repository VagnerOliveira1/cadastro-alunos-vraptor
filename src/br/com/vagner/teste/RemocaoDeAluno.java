package br.com.vagner.teste;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import br.com.vagner.modelo.Aluno;
public class RemocaoDeAluno {
	 public static void main(String[] args) {
	     AnnotationConfiguration configuration = new AnnotationConfiguration();
	     configuration.configure();
	     
	     SessionFactory factory = configuration.buildSessionFactory();
	     Session session = factory.openSession();
	     
	     // carrega o produto do banco de dados
	     Aluno aluno = (Aluno) session.load(Aluno.class, 1L);
	     
	     Transaction tx = session.beginTransaction();
	     session.delete(aluno);
	     tx.commit();
	   }

}
