package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataConnection {
	protected Connection conexion;
    protected boolean conectar(){
    	return false;
    }
    protected boolean desconectar(){
    	return false;
    }
}
