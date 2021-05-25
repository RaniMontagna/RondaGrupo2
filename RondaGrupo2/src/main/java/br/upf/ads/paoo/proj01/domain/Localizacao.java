package br.upf.ads.paoo.proj01.domain;

import java.io.Serializable;
import java.lang.Integer;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Localizacao
 *
 */
@Entity

public class Localizacao implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "LocalizacaoId")
	@SequenceGenerator(name = "LocalizacaoId", sequenceName = "LocalizacaoId", allocationSize = 1)	
	private Integer id;
	
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataHora;
	
	@Column(nullable = false)
	private Float lat;
	
	@Column(nullable = false)
	private Float lon;
	
	@ManyToOne(optional = false)
	private Ronda ronda;

	public Localizacao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Localizacao(Integer id, Date dataHora, float lat, float lon, Ronda ronda) {
		super();
		this.id = id;
		this.dataHora = dataHora;
		this.lat = lat;
		this.lon = lon;
		this.ronda = ronda;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getDataHora() {
		return dataHora;
	}

	public void setDataHora(Date dataHora) {
		this.dataHora = dataHora;
	}

	public float getLat() {
		return lat;
	}

	public void setLat(float lat) {
		this.lat = lat;
	}

	public float getLon() {
		return lon;
	}

	public void setLon(float lon) {
		this.lon = lon;
	}

	public Ronda getRonda() {
		return ronda;
	}

	public void setRonda(Ronda ronda) {
		this.ronda = ronda;
	}
	
	
	
}
