package Controlador;

import java.util.List;

/**
 * 
 * @param <T>
 *
 */

public abstract class CRUD<T> {
	public abstract boolean insertar(T objeto);
    public abstract List<T> consultarTodos();
    public abstract T Consultar(int id);
    public abstract boolean actualizar(T objeto);
    public abstract boolean eliminar(T objecto);
}
