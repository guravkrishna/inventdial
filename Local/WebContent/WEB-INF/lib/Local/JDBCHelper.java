package Local;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCHelper
{
	public static void close(ResultSet x)
	{
		if(x!=null)
			try {
				x.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	public static void close(Statement x)
	{
		if(x!=null)
			try {
				x.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public static void close(Connection x)
	{
		if(x!=null)
			try {
				x.close();
			} catch (SQLException e)
		     {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	public static Connection getConnection()
	{
		Connection con=null;
		try 
		{			
			Class.forName(Constants.DRIVER);
			con = DriverManager.getConnection(Constants.URL,Constants.UID,Constants.PWD);
			System.out.println("Connection Succeed");
			return con;
			
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) 
		{
			System.out.println("Connection failed");
			e.printStackTrace();
		}
		return null;	
	}
}