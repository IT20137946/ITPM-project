package common;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBConnection_SMS_Portal {
	
	//This function returns the connection
	//This function returns the connection	
	public Connection getConnection(){
		Connection connection=null;
		System.out.println("Connection called");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root", "lanka1999");
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	
}
//connection = DriverManager.getConnection("jdbc:mysql://ec2-50-19-213-178.compute-1.amazonaws.com:3306/doha","doha", "doha");