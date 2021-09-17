package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataConnection {
	protected Connection conexion;

	
	protected void conectar() {
		  try {    
	            Class.forName("com.mysql.cj.jdbc.Driver");      
	            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda18?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8", "root", "root");
	        } catch (Exception e) {
	        	System.out.println("error: "+e);
	        }
	    }
		
	 protected void desconectar() {
	        try {
	            conexion.close();
	            
	        } catch (Exception e) {
	            System.out.println("error: "+e);
	        }
	 }
}