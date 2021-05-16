package negocio;

import java.util.Date;
import java.util.List;

public class Atividade {

	private Integer id;
	// private Projeto projeto;
	// private List<Tarefa> tarefa;
	private String nome;
	private String autor;
	private String descAtv;
	private Date dataCriacaoTarefa;
	private Date dataCriacaoProj;
	private Date dataAlterTarefa;
	private String etiqueta;
	private Integer prioridade;
	private Boolean isUrgent;
	private Boolean hasFilter;
	private Integer qtdTotalProj;
	private Integer qtdTotalTarefa;
	private Double filtro;
	
	public Atividade(String nome, String autor)
	{
		this.nome = nome;
		this.autor = autor;	
	}
	
	@Override
	public String toString() {
		return String.format(
				"A tarefa '%s' do autor '%s' foi cadastrada com sucesso!\n",
					nome,
					autor
				);
	}
	
	public void imprimir()
	{
		System.out.println(this);
	}
	
	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
	}

	public Integer getId() 
	{
		return id;
	}

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public String getAutor() 
	{
		return autor;
	}

	public void setAutor(String autor) 
	{
		this.autor = autor;
	}

	public String getDescAtv() 
	{
		return descAtv;
	}

	public void setDescAtv(String descAtv) 
	{
		this.descAtv = descAtv;
	}

	public Date getDataCriacaoTarefa() 
	{
		return dataCriacaoTarefa;
	}

	public void setDataCriacaoTarefa(Date dataCriacaoTarefa) 
	{
		this.dataCriacaoTarefa = dataCriacaoTarefa;
	}

	public Date getDataCriacaoProj() 
	{
		return dataCriacaoProj;
	}

	public void setDataCriacaoProj(Date dataCriacaoProj) 
	{
		this.dataCriacaoProj = dataCriacaoProj;
	}

	public Date getDataAlterTarefa() 
	{
		return dataAlterTarefa;
	}

	public void setDataAlterTarefa(Date dataAlterTarefa) 
	{
		this.dataAlterTarefa = dataAlterTarefa;
	}

	public String getEtiqueta() 
	{
		return etiqueta;
	}

	public void setEtiqueta(String etiqueta) 
	{
		this.etiqueta = etiqueta;
	}

	public Integer getPrioridade() 
	{
		return prioridade;
	}

	public void setPrioridade(Integer prioridade) 
	{
		this.prioridade = prioridade;
	}

	public Boolean getIsUrgent() 
	{
		return isUrgent;
	}

	public void setIsUrgent(Boolean isUrgent) 
	{
		this.isUrgent = isUrgent;
	}

	public Boolean getHasFilter() 
	{
		return hasFilter;
	}

	public void setHasFilter(Boolean hasFilter) 
	{
		this.hasFilter = hasFilter;
	}

	public Integer getQtdTotalProj() 
	{
		return qtdTotalProj;
	}

	public void setQtdTotalProj(Integer qtdTotalProj) 
	{
		this.qtdTotalProj = qtdTotalProj;
	}

	public Integer getQtdTotalTarefa() 
	{
		return qtdTotalTarefa;
	}

	public void setQtdTotalTarefa(Integer qtdTotalTarefa) 
	{
		this.qtdTotalTarefa = qtdTotalTarefa;
	}

	public Double getFiltro() 
	{
		return filtro;
	}

	public void setFiltro(Double filtro) 
	{
		this.filtro = filtro;
	}
	
}
