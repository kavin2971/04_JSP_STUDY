package oracle06;

import java.sql.*;

public class OracleDBTest2 {

	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kh","1234");
			System.out.println("Success");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
						"SELECT * "
					  + " FROM JOB"
					  + " JOIN EMPLOYEE USING (JOB_CODE)");
			
			while(rs.next()) {
				//rs.getString("job_code");
				String jobCode = rs.getString(1);
				String jobName = rs.getString("job_name");
				String empName = rs.getString("emp_name");
				System.out.println(empName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
