package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import JdbcUtility.JdbcUtility;
import model.BAModel;

public class BADao
{
static Connection connection=JdbcUtility.getConnection();

	
	public static int insertRecord(BAModel r)
	{
		
		
		int j=0;
		
		try
		{
			PreparedStatement ps=connection.prepareStatement("insert into insertba values(?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1,r.getUniversity());
			ps.setString(2,r.getCourse());
			ps.setString(3,r.getSubject());
			ps.setString(4,r.getTopic());
			ps.setBlob(5,r.getSyllabus());
			ps.setBlob(6,r.getNotes());
			ps.setBlob(7,r.getVideos());
			ps.setBlob(8,r.getBooks());
			ps.setBlob(9,r.getQuespaper());
			
			j=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return j;
	}


}
