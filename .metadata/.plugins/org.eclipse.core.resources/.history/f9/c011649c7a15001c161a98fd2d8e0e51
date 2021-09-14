package Controlador.usuarios;

import DAO.InterCRUD;
import DAO.usuarioDAO;
import Modelo.usuarios.MUsuario;
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
    public MUsuario Consultar(int id) {
    	return usuario.Consultar(id);
    }
    public boolean actualizar(MUsuario objeto) {
    	return usuario.Actualizar(objeto);
    }
    public boolean eliminar(MUsuario objecto) {
    	return usuario.Eliminar(objecto);
    }
}
