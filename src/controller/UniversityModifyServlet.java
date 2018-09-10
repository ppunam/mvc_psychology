package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.omg.CORBA.Request;

import JdbcUtility.JdbcUtility;

@WebServlet("/UniversityModifyServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class UniversityModifyServlet extends HttpServlet
{
	 private static final String SAVE_DIR="images";
	private static final long serialVersionUID = 1L;
	
	static Connection connection=JdbcUtility.getConnection();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 PrintWriter out = response.getWriter();
		 response.setContentType("text/html");
		 
		 String savePath = "D://upload" + File.separator + SAVE_DIR;
         ///Admin Panel/WebContent/images/University_logos
             File fileSaveDir=new File(savePath);
             if(!fileSaveDir.exists())
             {
                 fileSaveDir.mkdir();
             }
		 
		 String uname=request.getParameter("u_name");
		 String uadd=request.getParameter("u_add");
		 String uemail=request.getParameter("u_email");
		 String ucontact=request.getParameter("u_contact");
		 String upattern=request.getParameter("u_pattern");
		
		// String ulogo=request.getParameter("u_logo");
		 //System.out.println(ulogo);
		 Part part=request.getPart("u_logo");
		 String ulogo=extractFileName(part);
		 part.write(savePath + File.separator + ulogo);
		 
		 try
		  	{
		  		
		  		PreparedStatement ps=connection.prepareStatement("update university set u_name=?,u_address=?,u_email=?,u_contacts=?,u_pattern=?,u_logo=? where u_name=?");
		  		
		  		ps.setString(1,uname);
		  		ps.setString(2,uadd);
		  		ps.setString(3,uemail);
		  		ps.setString(4,ucontact);
		  		ps.setString(5,upattern);
		  		ps.setString(6,ulogo);
		  		ps.setString(7,uname);
		  		
		  		int i=ps.executeUpdate();
		  		if(i>0)
		  		{
		  			out.println("University Updated Successfully!!!");
		  			RequestDispatcher rd=request.getRequestDispatcher("universityModify1.jsp");
		  			rd.forward(request, response);
		  		}
		  		else
		  		{
		  			out.println("University is not updated!!!");
		  			RequestDispatcher rd=request.getRequestDispatcher("universityModify1.jsp");
		  			rd.include(request, response);
		  		}		  				
		  	}
		  	catch(Exception e1)
		  	{
		  		System.out.println(e1);
		  	}
	}
	
	private String extractFileName(Part part)
	{
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items)
        {
            if (s.trim().startsWith("filename")) 
            {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
        
    }

}
