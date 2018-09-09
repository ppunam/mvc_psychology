package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.UniversityModel;
import model.UniversitySearchModel;
import JdbcUtility.JdbcUtility;

public class UniversitySearchDao
{
static Connection connection=JdbcUtility.getConnection();

	
	public static List<UniversityModel> searchUniversity(UniversitySearchModel u)
	{
		
		List<UniversityModel> l=new ArrayList<UniversityModel>();
		
		
		try
		{
			PreparedStatement ps=connection.prepareStatement("select * from university where u_name=?");
			ps.setString(1,u.getUname());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				UniversityModel r=new UniversityModel();
				
				r.setUname(rs.getString("u_name"));
				String a=r.getUname();
				System.out.println("from r:"+a);
				r.setUadd(rs.getString("u_address"));
				String a1=r.getUadd();
				System.out.println("from r:"+a1);
				r.setUemail(rs.getString("u_email"));
				String a2=r.getUemail();
				System.out.println("from r:"+a2);
				r.setUcontact(rs.getString("u_contacts"));
				String a3=r.getUcontact();
				System.out.println("from r:"+a3);
				r.setUpattern(rs.getString("u_pattern"));
				String a4=r.getUpattern();
				System.out.println("from r:"+a4);
				r.setUlogo(rs.getString("u_logo"));
				String a5=r.getUlogo();
				l.add(r);
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return l;
	}


}
