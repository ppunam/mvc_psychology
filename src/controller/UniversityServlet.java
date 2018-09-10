package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.UniversityModel;
import dao.UniversityDao;

@WebServlet("/UniversityServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class UniversityServlet extends HttpServlet 
{
	 private static final String SAVE_DIR="images";
	private static final long serialVersionUID = 1L;
	
	UniversityModel r=new UniversityModel();
	
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
		 
		  r.setUname(request.getParameter("u_name"));
		  r.setUadd(request.getParameter("u_add"));
          r.setUemail(request.getParameter("u_email"));
          r.setUcontact(request.getParameter("u_contact"));
         r.setUpattern(request.getParameter("u_pattern"));
         
          
         Part part=request.getPart("u_logo");
         System.out.println(part);
          String fileName=extractFileName(part);
          //if you may have more than one files with same name then you can calculate some random characters and append that characters in fileName so that it will  make your each image name identical.
          part.write(savePath + File.separator + fileName);
          
          r.setUlogo(fileName);
          
          int i=UniversityDao.insertRecord(r);
          

    		if(i>0)
    		{
    			out.println("Record is inserted!!!");
    			//Mailer.sendFromGMail(from, pass, to, subject, body);  
    			RequestDispatcher rd=request.getRequestDispatcher("university.jsp");
    			rd.forward(request, response);
    		}
    		else
    		{
    			out.println("Record is not inserted!!!");
    			 RequestDispatcher rd=request.getRequestDispatcher("university.jsp");
    			rd.include(request, response);
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
