package cl.awakelab.capacitacion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.capacitacion.entidad.Capacitacion;
import cl.awakelab.capacitacion.service.CapacitacionServiceImpl;


@Controller
public class CapacitacionController {

	@Autowired
	private CapacitacionServiceImpl cs;
	
	
	@RequestMapping(value="/listarcapacitacion", method = RequestMethod.GET)
	public ModelAndView listarcapacitacion() {
		List<Capacitacion> lista = cs.readAll();
		ModelAndView mv = new ModelAndView("listarcapacitacion");
		mv.addObject("lista",lista);
		return mv;
		
	}
	
	
	@RequestMapping(value = "/verCap/{id}", method = RequestMethod.GET)
	public  ModelAndView verCap(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("verCap");
		Capacitacion c= cs.readOne(id);
		mv.addObject("c",c);
		return mv;
		
	}
	
	@RequestMapping(value="/editarCapacitacion/{id}", method = RequestMethod.GET)
	public  ModelAndView editarCapacitacion(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("editarCapacitacion");
		Capacitacion c= cs.readOne(id);
		mv.addObject("c",c);
		return mv;
	}
	
	@RequestMapping(value="/editarCapacitacion/{id}", method = RequestMethod.POST)

     public ModelAndView editar(Capacitacion c) {
		Capacitacion c_origen = cs.readOne(c.getId());
		cs.update(c);
		return new ModelAndView("redirect:/listarcapacitacion");
	}
	
	
	
	@RequestMapping(value="/borrar/{id}", method = RequestMethod.GET)
    public ModelAndView borrar(@PathVariable("id") int id) {
		Capacitacion c = cs.readOne(id);
		cs.delete(id);
		return new ModelAndView("redirect:/listarcapacitacion");
	}
	
	
	@RequestMapping(value = "/crearcapacitacion", method = RequestMethod.GET)
	public String crearCapVer(Model model) {
		//IMPICapacitacion cDAO = new IMPICapacitacion();
		Capacitacion c = cs.readOne(1);
		model.addAttribute("c", c);
		return "crearcapacitacion";
	}
	
	
	@RequestMapping(value = "/crearcapacitacion", method = RequestMethod.POST)
	public String crearCapGuardar(Model model, @RequestParam ("rutCliente") String rutCliente,
			@RequestParam("dia") String dia, @RequestParam ("hora") String hora, @RequestParam("lugar") String lugar,
			@RequestParam("duracion") String duracion) {
		//System.out.println("Entre a crear ... ");
		
		
		Capacitacion c = new Capacitacion();
		
		c.setRutCliente(rutCliente);
		c.setDia(dia);
		c.setHora(hora);
		c.setLugar(lugar);
		c.setDuracion(duracion);
		c.setRutCliente(rutCliente);
		
		cs.create(c);
		
		return "redirect:/listarcapacitacion";
	}
	
}
