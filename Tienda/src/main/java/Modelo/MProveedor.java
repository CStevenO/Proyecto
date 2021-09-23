package Modelo;

import java.math.BigDecimal;

public class MProveedor {
	private BigDecimal nit_proveedor;
	private String ciudad_proveedor;
	private String direccion_proveedor;
	private String nombre_proveedor;
	private String telefono_proveedor;
	private String vacios;
	public MProveedor() {
		nit_proveedor = new BigDecimal(0);
		ciudad_proveedor = "";
		direccion_proveedor = "";
		nombre_proveedor = "";
		telefono_proveedor = "";
	}
	public MProveedor(BigDecimal nit_proveedor,String ciudad_proveedor,String direccion_proveedor,String nombre_proveedor,String telefono_proveedor) {
		this.nit_proveedor = nit_proveedor;
		this.ciudad_proveedor = ciudad_proveedor;
		this.direccion_proveedor = direccion_proveedor;
		this.nombre_proveedor = nombre_proveedor;
		this.telefono_proveedor = telefono_proveedor;
	}
	public boolean areThereEmpties() {
    	if(ciudad_proveedor == "" || direccion_proveedor == "" || nombre_proveedor == "" || telefono_proveedor == "") {
    		vacios = "";
    		if(nombre_proveedor == "") {
    			vacios += " Nombre Proveedor,";
    		}
    		if(direccion_proveedor == "") {
    			vacios += " Dirección,";
    		}
    		if(telefono_proveedor == "") {
    			vacios += " Telefono,";
    		}
    		if(ciudad_proveedor == "") {
    			vacios += " Ciudad,";
    		}
    		vacios += " estan vacios";
    		return true;
    	}
    	return false;
    }
    public String getVacios() {
		return vacios;
	}
	public BigDecimal getNit_proveedor() {
		return nit_proveedor;
	}
	public void setNit_proveedor(BigDecimal nit_proveedor) {
		this.nit_proveedor = nit_proveedor;
	}
	public String getCiudad_proveedor() {
		return ciudad_proveedor;
	}
	public void setCiudad_proveedor(String ciudad_proveedor) {
		this.ciudad_proveedor = ciudad_proveedor;
	}
	public String getDireccion_proveedor() {
		return direccion_proveedor;
	}
	public void setDireccion_proveedor(String direccion_proveedor) {
		this.direccion_proveedor = direccion_proveedor;
	}
	public String getNombre_proveedor() {
		return nombre_proveedor;
	}
	public void setNombre_proveedor(String nombre_proveedor) {
		this.nombre_proveedor = nombre_proveedor;
	}
	public String getTelefono_proveedor() {
		return telefono_proveedor;
	}
	public void setTelefono_proveedor(String telefono_proveedor) {
		this.telefono_proveedor = telefono_proveedor;
	}
	
}
