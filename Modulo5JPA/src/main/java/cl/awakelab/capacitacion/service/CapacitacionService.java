package cl.awakelab.capacitacion.service;

import java.util.List;

import cl.awakelab.capacitacion.entidad.Capacitacion;

public interface CapacitacionService {
	
	public List<Capacitacion> readAll();
	public Capacitacion readOne(int id);
	public void update(Capacitacion c);
	public void delete(int id);
	public void create(Capacitacion c);

}
