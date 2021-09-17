package Controlador.usuarios;

import DAO.InterCRUD;
import DAO.usuarioDAO;
import Modelo.usuarios.MUsuario;

import java.math.BigDecimal;
import java.util.List;

public class CUsuarios {
	InterCRUD<MUsuario> usuario;
	public CUsuarios() {
		usuario = new usuarioDAO();
	}
    public boolean insertar(MUsuario objeto) {
		return usuario.Insertar(objeto);
	}
    public List<MUsuario> consultarTodos() {
    	return usuario.ConsultarTodos();
    }
    public MUsuario Consultar(BigDecimal id) {
    	return usuario.Consultar(id);
    }
    public boolean actualizar(MUsuario objeto) {
    	return usuario.Actualizar(objeto);
    }
    public boolean eliminar(MUsuario objeto) {
    	return usuario.Eliminar(objeto);
    }
    public MUsuario Consultar(MUsuario objeto) {
    	return usuario.Consultar(objeto);
    }
}
