package br.com.vagner.teste;

import org.hibernate.Session;

import br.com.vagner.dao.AlunoDao;
import br.com.vagner.infra.CriadorDeSession;
import br.com.vagner.modelo.Aluno;

public class AdicaoDeAluno {
  public void main(String[] args) {
    Session session = CriadorDeSession.getSession();
    
    Aluno aluno = criaAluno();
  
    new AlunoDao().salva(aluno);
  }

   private Aluno criaAluno() {
	Aluno aluno = new Aluno();
    //aluno.setNome("Prateleira");
   // aluno.setEmail("@email");
   // aluno.setMatricula(11111);
	return aluno;
}
}