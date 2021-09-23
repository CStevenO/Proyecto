package Modelo.clientes;

import java.math.BigDecimal;

public class MCliente {
	private BigDecimal cedula_cliente;
	private String direccion_cliente;
    private String email_cliente;
    private String nombre_cliente;
    private String telefono_cliente;
    private String vacios;
    
    public MCliente() {
    	cedula_cliente = new BigDecimal(0);
    	direccion_cliente = "";
    	email_cliente = "";
    	nombre_cliente = "";
    	telefono_cliente = "";	
    	
    }
    public MCliente(BigDecimal cedula, String direccion, String email, String nombre, String telefono) {
    	this.cedula_cliente = cedula;
    	this.direccion_cliente = direccion;
        this.email_cliente = email;
        this.nombre_cliente = nombre;
        this.telefono_cliente = telefono;	
	}
    
    public boolean areThereEmpties() {
    	if(direccion_cliente == "" || email_cliente == "" || nombre_cliente == "" || telefono_cliente == "") {
    		vacios = "";
    		if(direccion_cliente == "") {
    			vacios += " Dirección completa,";
    		}
    		if(email_cliente == "") {
    			vacios += " Correo Electronico,";
    		}
    		if(nombre_cliente == "") {
    			vacios += " Nombre completo,";
    		}
    		if(telefono_cliente == "") {
    			vacios += " Teléfono,";
    		}
    		vacios += " estan vacios";
    		return true;
    	}
    	return false;
    }
    
    public String getVacios() {
		return vacios;
	}
	public BigDecimal getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(BigDecimal cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public String getDireccion_cliente() {
		return direccion_cliente;
	}
	public void setDireccion_cliente(String direccion_cliente) {
		this.direccion_cliente = direccion_cliente;
	}
	public String getEmail_cliente() {
		return email_cliente;
	}
	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}
	public String getNombre_cliente() {
		return nombre_cliente;
	}
	public void setNombre_cliente(String nombre_cliente) {
		this.nombre_cliente = nombre_cliente;
	}
	public String getTelefono_cliente() {
		return telefono_cliente;
	}
	public void setTelefono_cliente(String telefono_cliente) {
		this.telefono_cliente = telefono_cliente;
	}
    
    
	
    

}
