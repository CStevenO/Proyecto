package DAO;

import java.util.List;

import Modelo.usuarios.MUsuario;

public interface InterCRUD {
	public boolean Insertar(MUsuario objeto);
	public List<MUsuario> ConsultarTodos(); 
	public MUsuario Consultar(int id);
	public boolean Actualizar(MUsuario objeto);
	public boolean Eliminar(MUsuario objeto);
}
