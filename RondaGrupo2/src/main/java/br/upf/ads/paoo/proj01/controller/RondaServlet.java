package br.upf.ads.paoo.proj01.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.upf.ads.paoo.proj01.domain.Locomocao;
import br.upf.ads.paoo.proj01.domain.Pessoa;
import br.upf.ads.paoo.proj01.domain.Ronda;
import br.upf.ads.paoo.proj01.jpa.JpaUtil;

/**
 * Servlet implementation class PessoaServlet
 */
@WebServlet("/Privada/Ronda/RondaServlet")
public class RondaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RondaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		if (request.getParameter("gravar") != null) {
           gravar(request, response);
		} else if (request.getParameter("incluir") != null) {
			incluir(request, response);
		} else if (request.getParameter("alterar") != null) {
			alterar(request, response);
		} else if (request.getParameter("excluir") != null) {
			excluir(request, response);
		} else if (request.getParameter("cancelar") != null) {
			cancelar(request, response);
		} else if (request.getParameter("vigilantes") != null) {
			vigilantes(request, response);
		} else if (request.getParameter("incluirVigilante") != null) {
			incluirVigilante(request, response);
		} else if (request.getParameter("excluirVigilante") != null) {
			excluirVigilante(request, response);
		}
		else { // default = consultar
			listar(request, response);
		}
		
	}

	@SuppressWarnings("unchecked")
	private void vigilantes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer idRonda = Integer.parseInt(request.getParameter("vigilantes"));
		EntityManager em = JpaUtil.getEntityManager();
		Ronda o = em.find(Ronda.class, idRonda);
		List<Pessoa> pessoas = em.createQuery("from Pessoa").getResultList();
		em.close();
		request.setAttribute("o", o); // repassamos o objeto para o pessoaform inicializar os dados
		request.setAttribute("pessoas", pessoas);
		request.getRequestDispatcher("RondaVigilantes.jsp").forward(request, response);
	}
	
	@SuppressWarnings("unchecked")
	private void incluirVigilante(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			em.getTransaction().begin();
			Ronda o = em.find(Ronda.class, Integer.parseInt(request.getParameter("idRonda")));
			Pessoa p = em.find(Pessoa.class, Integer.parseInt(request.getParameter("vigilante")));
			o.getVigilantes().add(p);
			em.merge(o); // armazena o objeto no BD - tanto inclui como altera
			em.getTransaction().commit();
			
			List<Pessoa> pessoas = em.createQuery("from Pessoa").getResultList();
			request.setAttribute("o", o); // repassamos o objeto para o pessoaform inicializar os dados
			request.setAttribute("pessoas", pessoas);
			request.getRequestDispatcher("RondaVigilantes.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
	@SuppressWarnings("unchecked")
	private void excluirVigilante(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			em.getTransaction().begin();
			Ronda o = em.find(Ronda.class, Integer.parseInt(request.getParameter("idRonda")));
			Pessoa p = em.find(Pessoa.class, Integer.parseInt(request.getParameter("excluirVigilante")));
			o.getVigilantes().remove(p);
			em.merge(o); // armazena o objeto no BD - tanto inclui como altera
			em.getTransaction().commit();
			
			List<Pessoa> pessoas = em.createQuery("from Pessoa").getResultList();
			request.setAttribute("o", o); // repassamos o objeto para o pessoaform inicializar os dados
			request.setAttribute("pessoas", pessoas);
			request.getRequestDispatcher("RondaVigilantes.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
	
	
	
	private void cancelar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listar(request, response); // vai para o pessoalist
	}

	private void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("excluir"));
		EntityManager em = JpaUtil.getEntityManager();
		em.getTransaction().begin();
		em.remove(em.find(Ronda.class, id)); // localiza o objeto pelo id e exclui do BD
		em.getTransaction().commit();		
		em.close();
		listar(request, response);  // vai para o pessoalist
	}

	@SuppressWarnings("unchecked")
	private void alterar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("alterar"));
		EntityManager em = JpaUtil.getEntityManager();
		Ronda o = em.find(Ronda.class, id);
		List<Locomocao> locomocoes = em.createQuery("from Locomocao").getResultList();
		em.close();
		request.setAttribute("o", o); // repassamos o objeto para o pessoaform inicializar os dados
		request.setAttribute("locomocoes", locomocoes);
		request.getRequestDispatcher("RondaForm.jsp").forward(request, response);
	}

	@SuppressWarnings("unchecked")
	private void incluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		List<Locomocao> locomocoes = em.createQuery("from Locomocao").getResultList();
		em.close();
		request.setAttribute("locomocoes", locomocoes);
		request.getRequestDispatcher("RondaForm.jsp").forward(request, response);
	}

	@SuppressWarnings("unchecked")
	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		List<Ronda> lista = em.createQuery("from Ronda").getResultList();
		em.close();
		request.setAttribute("lista", lista);
		request.getRequestDispatcher("RondaList.jsp").forward(request, response);
	}

	@SuppressWarnings("unchecked")
	private void gravar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			Ronda o = inicializarObjeto(request, em); 
			em.getTransaction().begin();
			em.merge(o); // armazena o objeto no BD - tanto inclui como altera
			em.getTransaction().commit();	
	        List<Ronda> lista = em.createQuery("from Ronda").getResultList();
	     	request.setAttribute("lista", lista);
	        request.getRequestDispatcher("RondaList.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
	}

	private Ronda inicializarObjeto(HttpServletRequest request, EntityManager em) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm"); // 2021-05-18T15:30
		// tratar a ronda que foi informada
		Locomocao locomocao = em.find(Locomocao.class, Integer.parseInt(request.getParameter("locomocao")) );
		
		Ronda o = new Ronda(
				request.getParameter("id").equals("") ? null : Integer.parseInt(request.getParameter("id")), 
				sdf.parse(request.getParameter("dataHoraInicio").replaceAll("T", " ")),
				request.getParameter("dataHoraFim").equals("") ? null : sdf.parse(request.getParameter("dataHoraFim").replaceAll("T", " ")), 
				request.getParameter("latUltima").equals("") ? null : Float.parseFloat(request.getParameter("latUltima")), 
				request.getParameter("lonUltima").equals("") ? null : Float.parseFloat(request.getParameter("lonUltima")), 
				request.getParameter("dataHoraUltima").equals("") ? null : sdf.parse(request.getParameter("dataHoraUltima").replaceAll("T", " ")), 
				locomocao,
				null
				);
		return o;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
