package cl.awakelab.capacitacion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.capacitacion.entidad.Capacitacion;
import cl.awakelab.capacitacion.repo.CapacitacionRepo;


@Service
public class CapacitacionServiceImpl implements CapacitacionService{

	@Autowired
	CapacitacionRepo cr;
	
	@Override
	public List<Capacitacion> readAll() {
		// TODO Auto-generated method stub
		return cr.findAll();
	}

	@Override
	public Capacitacion readOne(int id) {
		// TODO Auto-generated method stub
		return cr.findById(id).get();
	}

	@Override
	public void update(Capacitacion c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}
	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		cr.deleteById(id);
	}

	@Override
	public void create(Capacitacion c) {
		cr.save(c);
		
	}
	
}
