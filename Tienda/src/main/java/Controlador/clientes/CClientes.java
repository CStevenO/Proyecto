package Controlador.clientes;

import java.math.BigDecimal;
import java.util.List;
import DAO.InterCRUD;
import DAO.clienteDAO;
import Modelo.clientes.MCliente;

public class CClientes {
	InterCRUD<MCliente> cliente;
	
	public CClientes() {
		cliente = new clienteDAO();
	}
	
	public boolean insertar(MCliente objeto) {
		return cliente.Insertar(objeto);
	}
	
	public List<MCliente> consultarTodos() {
    	return cliente.ConsultarTodos();
    }
	
	public MCliente Consultar(BigDecimal id) {
    	return cliente.Consultar(id);
    }
	
	public boolean actualizar(MCliente objeto) {
    	return cliente.Actualizar(objeto);
    }
	
	public boolean eliminar(MCliente objeto) {
    	return cliente.Eliminar(objeto);
    }

}
