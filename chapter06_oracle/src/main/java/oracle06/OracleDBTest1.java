package oracle06;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleDBTest1 {

	public static void main(String[] args) {
		// 반드시!! try/catch 로해줘야한다
		try {   
			Class.forName("oracle.jdbc.OracleDriver"); 
		 // Class.forName("com.mysql.jdbc.Driver");  => mysql db 사용시
		 // Class.forName("org.mariadb.jdbc.Driver");=> maria db 사용시
			
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kh","1234");
			System.out.println("Success");
		} catch (SQLException e) {				
				e.printStackTrace();			
		} catch (ClassNotFoundException e) {			
			    e.printStackTrace();
		}

	}

}
