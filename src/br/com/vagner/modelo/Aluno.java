package br.com.vagner.modelo;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.br.CPF;

@Entity
public class Aluno {

	@Id
	@GeneratedValue
	private Long id;
	

	@NotNull(message="nome precisa ser preenchido")
	@Length(min=4, message="nome curto")
	private String nome;
	
	@NotNull(message = "O email deve ser informado")
	@Email(message = "Email invalido")
	private String email;
	
	@NotEmpty(message="Informe um cpf")
	@CPF(message="Informe um cpf válido")
	private String cpf;
	
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	
	

}
