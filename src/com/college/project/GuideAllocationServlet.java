package com.college.project;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import java.io.*;
import java.io.PrintWriter;


import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServletRequest;
import java.util.*;
public class GuideAllocationServlet extends HttpServlet {
 
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		PersistenceManager pm = PMF.get().getPersistenceManager();

		Query q = pm.newQuery(Student_Basic.class);
		String roll,guide;
		roll=  request.getParameter("roll");
		guide=  request.getParameter("guide");   
		

		q.setFilter("id == '" + roll + "'");
				
		List<Student_Basic> results = (List<Student_Basic>) q.execute(roll);
		
		try{
			
			
			if(!results.isEmpty())
			{
				Student_Basic c = pm.getObjectById(Student_Basic.class,roll);
				 c.setGuide(guide);
			      out.print("Guide Allocated..");  

				
		    }  
		    else
		    {  
		       out.print("Sorry UserName or Password Error!");  
		      
			}
		}
		finally{
			
			q.closeAll();
		}
	}

}
