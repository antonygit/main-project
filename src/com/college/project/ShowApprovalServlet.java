package com.college.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import java.util.*;

public class ShowApprovalServlet extends HttpServlet 
{
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String roll=request.getParameter("roll");
				
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();    
		Student_Basic st=new Student_Basic();
        PersistenceManager pm = PMF.get().getPersistenceManager();
        Query q = pm.newQuery(Student_Basic.class);
		try
		{
		   pm.makePersistent(st);
		   List<Student_Basic> results1 = null;
		   results1 = (List<Student_Basic>) q.execute();
			List<Student_Basic> bb =(List<Student_Basic>)results1;
			for(Student_Basic b:bb )
			{
				if(b.getGuide()!=null&&b.getId()!=null)
				{
				    out.print(b.getId());
			        out.print("$");
			        out.print(b.getGuide());
			        out.print("$");
					
				
				}
				
				
		     }
	   	  
	   	    
      
		}
		
		catch(Exception e)
		{
			
			System.out.println(e);
			
		}
		finally
		{
			q.closeAll();
			pm.close();
			out.close(); 

			
		}
		 
	 
	}

}
