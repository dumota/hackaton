package com.concessionaria.models;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Veiculo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String modelo;
	
	@DateTimeFormat(pattern = "yyyy-%-%")
	private LocalDate anomodelo;
	
	@DateTimeFormat(pattern = "yyyy")
	private LocalDate anofabricacao;
	
	private Double valor;
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo")
	private Tipo tipo;
	private String fotodestaque;
	
	@ManyToOne
	@JoinColumn(name="marca_id")
	private Marca marca;
	
	@ManyToOne
	@JoinColumn(name="cor_id")
	private Cor cor;
	
	
	
	private String opcionais;
	
	protected Veiculo() {
		
	}
	public Long getId() {
		return id;
	}

	public String getModelo() {
		return modelo;
	}

	public LocalDate getAnomodelo() {
		return anomodelo;
	}

	public LocalDate getAnofabricacao() {
		return anofabricacao;
	}

	public Double getValor() {
		return valor;
	}

	public Tipo getTipo() {
		return tipo;
	}

	public String getFotoDestaque() {
		return fotodestaque;
	}

	public Marca getMarca() {
		return marca;
	}

	public Cor getCor() {
		return cor;
	}

	public String getOpcionais() {
		return opcionais;
	}
	

	
	
}
