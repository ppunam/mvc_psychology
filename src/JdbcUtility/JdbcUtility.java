package JdbcUtility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtility 
{
	public static Connection connetion=null;
	public static Connection getConnection()
	{
	if(connetion==null)	
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connetion=DriverManager.getConnection("jdbc:mysql://localhost/AdminPanel" ,"root","root");
		} catch (ClassNotFoundException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	return connetion;
	}

}
