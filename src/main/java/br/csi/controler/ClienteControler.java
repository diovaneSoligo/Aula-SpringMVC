package br.csi.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.csi.dao.ClienteDao;
import br.csi.modelo.Cliente;

@Controller
public class ClienteControler {
	
	
	@RequestMapping("clientes")	
	public String msgTeste(){
		System.out.println("chamou o controler");
		return "cliente";
	}
	
	
	@RequestMapping("adicionarClientes")
	public String adiciona(Cliente cliente){
		
		boolean retorno = new ClienteDao().adicionar(cliente);
		if(retorno){
			return"cliente";
		}else{
			return "erro";
		}

	}
	
	
	
	@RequestMapping("listaClientes")
	public ModelAndView lista(){
		
		System.out.println("chamou o listar....");
		
		ModelAndView mv = new ModelAndView("cliente");
		
		mv.addObject("clientes",new ClienteDao().listaClientes());
		
		return mv;
	}
	
	
}
