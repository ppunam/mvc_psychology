package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.UniversityModel;
import JdbcUtility.JdbcUtility;

public class UniversityDao
{
static Connection connection=JdbcUtility.getConnection();

	
	public static int insertRecord(UniversityModel r)
	{
		
		
		int j=0;
		
		try
		{
			PreparedStatement ps=connection.prepareStatement("insert into university values(?,?,?,?,?,?,?)");
			ps.setString(1,null);
			ps.setString(2,r.getUname());
			ps.setString(3,r.getUadd());
			ps.setString(4,r.getUemail());
			ps.setString(5,r.getUcontact());
			ps.setString(6,r.getUpattern());
			ps.setString(7,r.getUlogo());
			
			j=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return j;
	}

}
