package Controlador;

import java.math.BigDecimal;
import java.util.List;

import DAO.InterCRUD;
import DAO.proveedorDAO;
import Modelo.MProveedor;

public class CProveedores {
	InterCRUD<MProveedor> proveedor;
	public CProveedores() {
		proveedor = new proveedorDAO();
	}
    public boolean insertar(MProveedor objeto) {
		return proveedor.Insertar(objeto);
	}
    public List<MProveedor> consultarTodos() {
    	return proveedor.ConsultarTodos();
    }
    public MProveedor Consultar(BigDecimal id) {
    	return proveedor.Consultar(id);
    }
    public boolean actualizar(MProveedor objeto) {
    	return proveedor.Actualizar(objeto);
    }
    public boolean eliminar(MProveedor objeto) {
    	return proveedor.Eliminar(objeto);
    }
    public MProveedor Consultar(MProveedor objeto) {
    	return proveedor.Consultar(objeto);
    }
}
