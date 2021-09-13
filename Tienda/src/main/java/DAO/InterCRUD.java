package DAO;

import java.util.List;

/**
 * 
 * @param <T>
 *
 */

public abstract interface InterCRUD<T> {
	public abstract boolean Insertar(T objeto);
	public abstract List<T> ConsultarTodos(); 
	public abstract T Consultar(int id);
	public abstract boolean Actualizar(T objeto);
	public abstract boolean Eliminar(T objeto);
}
