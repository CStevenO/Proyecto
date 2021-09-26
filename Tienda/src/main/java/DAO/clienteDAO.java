package DAO;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import DataBase.DataConnection;
import Modelo.MCliente;




public class clienteDAO extends DataConnection implements InterCRUD<MCliente> {

	@Override
	public boolean Insertar(MCliente objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "INSERT INTO "
						+ "clientes (cedula_cliente,direccion_cliente, email_cliente, nombre_cliente,telefono_cliente) "
						+ "VALUES(?,?,?,?,?)";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, objeto.getCedula_cliente());
				sentencia.setString(2,objeto.getDireccion_cliente());
				sentencia.setString(3, objeto.getEmail_cliente());
				sentencia.setString(4, objeto.getNombre_cliente());
				sentencia.setString(5, objeto.getTelefono_cliente());
				sentencia.executeUpdate();
				desconectar();
				return true;
			}
			catch(Exception e) {
				return false;
			}
			
		}
		return false;
	}

	@Override
	public List<MCliente> ConsultarTodos() {
		try {
			conectar();
			List<MCliente> clientes = new ArrayList<>();
			String tx = "SELECT * FROM clientes";
			PreparedStatement sentencia = conexion.prepareStatement(tx);
			ResultSet datos = sentencia.executeQuery();
			while(datos.next()) {
				MCliente cliente = new MCliente();
				cliente.setCedula_cliente(datos.getBigDecimal("cedula_cliente"));
				cliente.setDireccion_cliente(datos.getString("direccion_cliente"));
				cliente.setEmail_cliente(datos.getString("email_cliente"));
				cliente.setNombre_cliente(datos.getString("nombre_cliente"));
				cliente.setTelefono_cliente(datos.getString("telefono_cliente"));
				clientes.add(cliente);
			}
			desconectar();
			return clientes;
		}
		catch(Exception e) {
			return null;
		}
		
	}

	@Override
	public MCliente Consultar(BigDecimal id) {
		if(id != new BigDecimal(0)) {
			try {
				conectar();
				MCliente cliente = new MCliente();
				String tx = "SELECT * FROM clientes WHERE cedula_cliente=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, id);
				ResultSet datos = sentencia.executeQuery();
				if(datos.next()) {
					cliente.setCedula_cliente(datos.getBigDecimal("cedula_cliente"));
					cliente.setDireccion_cliente(datos.getString("direccion_cliente"));
					cliente.setEmail_cliente(datos.getString("email_cliente"));
					cliente.setNombre_cliente(datos.getString("nombre_cliente"));
					cliente.setTelefono_cliente(datos.getString("telefono_cliente"));
				}
				desconectar();
				return cliente;
			}
			catch(Exception e) {
				System.out.println(e);
				return null;
			}
		}
		System.out.println("vacio");
		return null;
	}

	@Override
	public MCliente Consultar(MCliente objeto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Actualizar(MCliente objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "UPDATE clientes SET "
						+ "direccion_cliente=?, email_cliente=?, nombre_cliente=?, telefono_cliente=?"
						+ "where cedula_cliente=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setString(1, objeto.getDireccion_cliente());
				sentencia.setString(2, objeto.getEmail_cliente());
				sentencia.setString(3, objeto.getNombre_cliente());
				sentencia.setString(4, objeto.getTelefono_cliente());
				sentencia.setBigDecimal(5, objeto.getCedula_cliente());
				sentencia.executeUpdate();
				desconectar();
				return true;
			}
			catch(Exception e) {
				return false;
			}
		}
		return false;
	}

	@Override
	public boolean Eliminar(MCliente objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "DELETE FROM clientes WHERE cedula_cliente=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, objeto.getCedula_cliente());
				sentencia.executeUpdate();
				desconectar();
				return true;
			}
			catch(Exception e) {
				return false;
			}
		}
		return false;
	}
	

}
