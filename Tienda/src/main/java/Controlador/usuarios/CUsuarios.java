package Controlador.usuarios;

import Controlador.CRUD;
import DAO.InterCRUD;
import DAO.modelDAO;
import Modelo.usuarios.MUsuario;
import java.util.List;

public class CUsuarios extends CRUD<MUsuario>{
	InterCRUD usuario;
	public CUsuarios() {
		usuario = new modelDAO();
	}
	@Override
    public boolean insertar(MUsuario objeto) {
		return usuario.Insertar(objeto);
	}

    @Override
    public List<MUsuario> consultarTodos() {
    	return usuario.ConsultarTodos();
    }

    @Override
    public MUsuario Consultar(int id) {
    	return usuario.Consultar(id);
    }

    @Override
    public boolean actualizar(MUsuario objeto) {
    	return usuario.Actualizar(objeto);
    }

    @Override
    public boolean eliminar(MUsuario objecto) {
    	return usuario.Eliminar(objecto);
    }
}