package br.upf.ads.paoo.proj01.domain;

import java.io.Serializable;
import java.lang.Float;
import java.lang.Integer;
import java.lang.String;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Ocorrencia
 *
 */
@Entity

public class Ocorrencia implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "OcorrenciaId")
	@SequenceGenerator(name = "OcorrenciaId", sequenceName = "OcorrenciaId", allocationSize = 1)
	private Integer id;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date dataHora;
	
	@Column(length = 50, nullable = false)
	private String titulo;
	
	@Column(length = 150, nullable = false)
	private String descricao;
	
	@Column(nullable = false)
	private Float lat;
	
	@Column(nullable = false)
	private Float lon;
	
	private String foto;
	
	@ManyToOne(optional = false)
	private Ronda ronda;
	
	private static final long serialVersionUID = 1L;

	public Ocorrencia() {
		super();
	}   

	public Ocorrencia(Integer id) {
		super();
		this.id = id;
	}

	public Ocorrencia(Integer id, Date dataHora, String titulo, String descricao, Float lat, Float lon, String foto,
			Ronda ronda) {
		super();
		this.id = id;
		this.dataHora = dataHora;
		this.titulo = titulo;
		this.descricao = descricao;
		this.lat = lat;
		this.lon = lon;
		this.foto = foto;
		this.ronda = ronda;
	}
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}   
	public Date getDataHora() {
		return this.dataHora;
	}

	public void setDataHora(Date dataHora) {
		this.dataHora = dataHora;
	}   
	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}   
	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}   
	public Float getLat() {
		return this.lat;
	}

	public void setLat(Float lat) {
		this.lat = lat;
	}   
	public Float getLon() {
		return this.lon;
	}

	public void setLon(Float lon) {
		this.lon = lon;
	}   
	public String getFoto() {
		return this.foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}   
	public Ronda getRonda() {
		return this.ronda;
	}

	public void setRonda(Ronda ronda) {
		this.ronda = ronda;
	}
   
}