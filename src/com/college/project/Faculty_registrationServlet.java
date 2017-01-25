package com.college.project;
import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import java.util.*;

public class Faculty_registrationServlet extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
 {
	
	response.setContentType("text/html");  
	PrintWriter out = response.getWriter();  
	String name,email,spec,id;
	id=  request.getParameter("id");
	name=  request.getParameter("names");
	email=  request.getParameter("email");
	spec=  request.getParameter("spec");
	  Faculty_Basic c = new Faculty_Basic();
	  PersistenceManager pm = PMF.get().getPersistenceManager();
	  try 
	  {
	   pm.makePersistent(c);
	   Query q = pm.newQuery(Faculty_Basic.class);
       q.setFilter("id == '" + id + "'");
		List<Faculty_Basic> results = (List<Faculty_Basic>) q.execute(id);
			if(results.isEmpty())
			{
				  c.setId(id);
				  c.setName(name);
				  c.setEmail(email);
				  c.setSpec(spec);
			      out.print("Data Added Successfully.."); 

		    }  
		    else
		    {  
				  out.print("Id already registered!!");  

			}
	 
	  } 
	
	  finally 
	  {
	  	pm.close();
	  }
	  
	  

}

}