package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.BAModel;

@WebServlet("/BAServlet")
public class BAServlet  extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	private static final String SAVE_DIR="images";
	static BAModel r =new BAModel();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 PrintWriter out = response.getWriter();
		 response.setContentType("text/html");
		 
		  String university=request.getParameter("university");
          String course=request.getParameter("course");
          String subject=request.getParameter("subject");
          String topic=request.getParameter("topic");
          
          String savePath = "D://upload" + File.separator + SAVE_DIR;
          File fileSaveDir=new File(savePath);
          if(!fileSaveDir.exists())
          {
              fileSaveDir.mkdir();
          }
          Part part=request.getPart("syllabus");
          Part part1=request.getPart("notes");
          Part part2=request.getPart("videos");
          Part part3=request.getPart("books");
          Part part4=request.getPart("quespaper");
          
          System.out.println("syllabus:"+part);
          
          String filename=extractFileName(part);
          String filename1=extractFileName(part);
          
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
