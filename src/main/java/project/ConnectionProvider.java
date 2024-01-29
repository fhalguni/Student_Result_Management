package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

    public static Connection getCon() throws ClassNotFoundException, SQLException {
    	String dbURL="jdbc:mysql://localhost:3306/ResultSystem?useSSl=false";
		String dbUsername="root";
		String dbPassword="Ashwini@2003";
		Connection con=null;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(dbURL,dbUsername,dbPassword);
		return con;
    }

    // Close Connection
    
}