package DAO;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DataBase.DataConnection;
import Modelo.usuarios.MUsuario;

public class usuarioDAO extends DataConnection implements InterCRUD<MUsuario> {
	@Override
	public boolean Insertar(MUsuario objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "INSERT INTO "
						+ "usuarios (cedula_usuario,email_usuario,nombre_usuario,password,usuario,rol) "
						+ "VALUES(?,?,?,?,?,?)";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, objeto.getCedula_usuario());
				sentencia.setString(2,objeto.getEmail_usuario());
				sentencia.setString(3, objeto.getNombre_usuario());
				sentencia.setString(4, objeto.getPassword());
				sentencia.setString(5, objeto.getUsuario());
				sentencia.setInt(6, objeto.getRol());
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
	public List<MUsuario> ConsultarTodos() {
		try {
			conectar();
			List<MUsuario> usuarios = new ArrayList<>();
			String tx = "SELECT * FROM usuarios";
			PreparedStatement sentencia = conexion.prepareStatement(tx);
			ResultSet datos = sentencia.executeQuery();
			while(datos.next()) {
				MUsuario usuario = new MUsuario();
				usuario.setCedula_usuario(datos.getBigDecimal("cedula_usuario"));
				usuario.setEmail_usuario(datos.getString("email_usuario"));
				usuario.setNombre_usuario(datos.getString("nombre_usuario"));
				usuario.setPassword(datos.getString("password"));
				usuario.setUsuario(datos.getString("usuario"));
				usuario.setRol(datos.getInt("rol"));
				usuarios.add(usuario);
			}
			desconectar();
			return usuarios;
		}
		catch(Exception e) {
			return null;
		}
	}

	@Override
	public MUsuario Consultar(BigDecimal id) {
		if(id != new BigDecimal(0)) {
			try {
				conectar();
				MUsuario usuario = new MUsuario();
				String tx = "SELECT * FROM usuarios WHERE cedula_usuario=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, id);
				ResultSet datos = sentencia.executeQuery();
				if(datos.next()) {
					usuario.setCedula_usuario(datos.getBigDecimal("cedula_usuario"));
					usuario.setEmail_usuario(datos.getString("email_usuario"));
					usuario.setNombre_usuario(datos.getString("nombre_usuario"));
					usuario.setPassword(datos.getString("password"));
					usuario.setUsuario(datos.getString("usuario"));
					usuario.setRol(datos.getInt("rol"));
				}
				desconectar();
				return usuario;
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
	public boolean Actualizar(MUsuario objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "UPDATE usuarios SET "
						+ "email_usuario=?, nombre_usuario=?, password=?, usuario=?, rol=?"
						+ "where cedula_usuario=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setString(1, objeto.getEmail_usuario());
				sentencia.setString(2, objeto.getNombre_usuario());
				sentencia.setString(3, objeto.getPassword());
				sentencia.setString(4, objeto.getUsuario());
				sentencia.setInt(5, objeto.getRol());
				sentencia.setBigDecimal(6, objeto.getCedula_usuario());
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
	public boolean Eliminar(MUsuario objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "DELETE FROM usuarios WHERE cedula_usuario=?";
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setBigDecimal(1, objeto.getCedula_usuario());
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
	public MUsuario Consultar(MUsuario objeto) {
		if(objeto != null) {
			try {
				conectar();
				String tx = "SELECT * FROM usuarios WHERE usuario=? and password=?";			
				PreparedStatement sentencia = conexion.prepareStatement(tx);
				sentencia.setString(1, objeto.getUsuario());
				sentencia.setString(2, objeto.getPassword());
				ResultSet datos = sentencia.executeQuery();
				MUsuario usuario = new MUsuario();
				if(datos.next()) {
					usuario.setCedula_usuario(datos.getBigDecimal("cedula_usuario"));
					usuario.setEmail_usuario(datos.getString("email_usuario"));
					usuario.setNombre_usuario(datos.getString("nombre_usuario"));
					usuario.setPassword(datos.getString("password"));
					usuario.setUsuario(datos.getString("usuario"));
					usuario.setRol(datos.getInt("rol"));
				}
				desconectar();
				return usuario;
			}
			catch(Exception e) {
				System.out.println(e);
				return null;
			}
		}
		return null;
	}

}
