package Modelo.usuarios;

import java.math.BigDecimal;

public class MUsuario {
	private BigDecimal cedula_usuario;
    private String email_usuario;
    private String nombre_usuario;
    private String password;
    private String usuario;
    private int rol;
    private String vacios;
    public MUsuario(){
        cedula_usuario = new BigDecimal(0);
        email_usuario = "";
        nombre_usuario = "";
        password = "";
        usuario = "";
        rol = 0;
    }
    public MUsuario(BigDecimal cedula, String email, String nombre, String password, String usuario, int rol){
        cedula_usuario = cedula;
        email_usuario = email;
        nombre_usuario = nombre;
        this.password = password;
        this.usuario = usuario;
        this.rol = rol;
    }
    public boolean areThereEmpties() {
    	if(email_usuario == "" || nombre_usuario == "" || password == "" || usuario == "") {
    		vacios = "";
    		if(nombre_usuario == "") {
    			vacios += " Nombre Completo,";
    		}
    		if(email_usuario == "") {
    			vacios += " Correo Electronico,";
    		}
    		if(usuario == "") {
    			vacios += " Usuario,";
    		}
    		if(password == "") {
    			vacios += " Contraseña,";
    		}
    		vacios += " estan vacios";
    		return true;
    	}
    	return false;
    }
    public String getVacios() {
		return vacios;
	}
    public BigDecimal getCedula_usuario() {
        return cedula_usuario;
    }
    public void setCedula_usuario(BigDecimal cedula_usuario) {
        this.cedula_usuario = cedula_usuario;
    }
    public String getEmail_usuario() {
        return email_usuario;
    }
    public void setEmail_usuario(String email_usuario) {
        this.email_usuario = email_usuario;
    }
    public String getNombre_usuario() {
        return nombre_usuario;
    }
    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUsuario() {
        return usuario;
    }
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    public int getRol() {
    	return rol;
    }
    public void setRol(int rol) {
    	this.rol = rol;
    }
}
