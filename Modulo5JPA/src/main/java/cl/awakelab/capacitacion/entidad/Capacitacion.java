package cl.awakelab.capacitacion.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name ="capacitacion")
public class Capacitacion {
	// atributos de la clase
	    @Id
	    @Column(name="idcap")
	    @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="CAPACITACION_SEQ")
	    @SequenceGenerator(name= "CAPACITACION_SEQ",allocationSize =1)
		private int id; //obligatorio
	    
	    @Column(name="feccap")
		private String dia; //fecha
	    
	    @Column(name="horcap")   
		private String hora; //formato HH:MM 0-23: 0-59
	    
	    @Column(name="lugcap") 
		private String lugar; //obligatorio
	    
	    @Column(name="durcap") 
		private String duracion;
	    
	    @Column(name="cliente_rutcli") 
		private String rutCliente; //obligatorio

		public Capacitacion() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Capacitacion(int id, String dia, String hora, String lugar, String duracion, String rutCliente) {
			super();
			this.id = id;
			this.dia = dia;
			this.hora = hora;
			this.lugar = lugar;
			this.duracion = duracion;
			this.rutCliente = rutCliente;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getDia() {
			return dia;
		}

		public void setDia(String dia) {
			this.dia = dia;
		}

		public String getHora() {
			return hora;
		}

		public void setHora(String hora) {
			this.hora = hora;
		}

		public String getLugar() {
			return lugar;
		}

		public void setLugar(String lugar) {
			this.lugar = lugar;
		}

		public String getDuracion() {
			return duracion;
		}

		public void setDuracion(String duracion) {
			this.duracion = duracion;
		}

		public String getRutCliente() {
			return rutCliente;
		}

		public void setRutCliente(String rutCliente) {
			this.rutCliente = rutCliente;
		}
		
	    
	
}
