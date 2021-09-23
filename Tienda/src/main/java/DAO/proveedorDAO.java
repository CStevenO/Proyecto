package DAO;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DataBase.DataConnection;
import Modelo.MProveedor;

public class proveedorDAO extends DataConnection implements InterCRUD<MProveedor>{
	@Override
	public boolean Insertar(MProveedor objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "INSERT INTO "
						+ "proveedores (nit_proveedor,ciudad_proveedor,direccion_proveedor,nombre_proveedor,telefono_proveedor) "
						+ "VALUES(?,?,?,?,?)";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, objeto.getNit_proveedor());
				sentencia.setString(2,objeto.getCiudad_proveedor());
				sentencia.setString(3, objeto.getDireccion_proveedor());
				sentencia.setString(4, objeto.getNombre_proveedor());
				sentencia.setString(5, objeto.getTelefono_proveedor());
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
	public List<MProveedor> ConsultarTodos() {
		try {
			conectar();
			List<MProveedor> proveedores = new ArrayList<>();
			String tx = "SELECT * FROM proveedores";
			PreparedStatement sentencia = conexion.prepareStatement(tx);
			ResultSet datos = sentencia.executeQuery();
			while(datos.next()) {
				MProveedor proveedor = new MProveedor();
				proveedor.setNit_proveedor(datos.getBigDecimal("nit_proveedor"));
				proveedor.setCiudad_proveedor(datos.getString("ciudad_proveedor"));
				proveedor.setDireccion_proveedor(datos.getString("direccion_proveedor"));
				proveedor.setNombre_proveedor(datos.getString("nombre_proveedor"));
				proveedor.setTelefono_proveedor(datos.getString("telefono_proveedor"));
				proveedores.add(proveedor);
			}
			desconectar();
			return proveedores;
		}
		catch(Exception e) {
			return null;
		}
	}
	@Override
	public MProveedor Consultar(BigDecimal id) {
		if(id != new BigDecimal(0)) {
			try {
				conectar();
				MProveedor proveedor = new MProveedor();
				String tx = "SELECT * FROM proveedores WHERE nit_proveedor=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, id);
				ResultSet datos = sentencia.executeQuery();
				if(datos.next()) {
					proveedor.setNit_proveedor(datos.getBigDecimal("nit_proveedor"));
					proveedor.setCiudad_proveedor(datos.getString("ciudad_proveedor"));
					proveedor.setDireccion_proveedor(datos.getString("direccion_proveedor"));
					proveedor.setNombre_proveedor(datos.getString("nombre_proveedor"));
					proveedor.setTelefono_proveedor(datos.getString("telefono_proveedor"));
				}
				desconectar();
				return proveedor;
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
	public MProveedor Consultar(MProveedor objeto) {
		// TODO lo dejo null para ver en que lo podriamos usar en el futuro
		return null;
	}
	@Override
	public boolean Actualizar(MProveedor objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "UPDATE proveedores SET "
						+ "ciudad_proveedor=?, direccion_proveedor=?, nombre_proveedor=?, telefono_proveedor=?"
						+ "where nit_proveedor=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setString(1, objeto.getCiudad_proveedor());
				sentencia.setString(2, objeto.getDireccion_proveedor());
				sentencia.setString(3, objeto.getNombre_proveedor());
				sentencia.setString(4, objeto.getTelefono_proveedor());
				sentencia.setBigDecimal(5, objeto.getNit_proveedor());
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
	public boolean Eliminar(MProveedor objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "DELETE FROM proveedores WHERE nit_proveedor=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, objeto.getNit_proveedor());
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
