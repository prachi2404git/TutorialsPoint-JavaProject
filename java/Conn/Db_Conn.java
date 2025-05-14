package Conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Db_Conn {
	public static final String Driver="com.mysql.cj.jdbc.Driver";
	public static Connection con;
	public static final String url="jdbc:mysql://localhost:3306/tutorial?useSSL=false";
	public static final String username="root";
	public static final String password="mysql";
	
	public static Connection getCon() {
		try {
			Class.forName(Driver);
			con=DriverManager.getConnection(url, username, password);
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		return con;
	}
}
