package cl.awakelab.capacitacion.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.awakelab.capacitacion.entidad.Capacitacion;

@Repository
public interface CapacitacionRepo extends JpaRepository<Capacitacion,Integer>{

}
