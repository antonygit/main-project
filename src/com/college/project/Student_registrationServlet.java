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

 
public class Student_registrationServlet  extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
 {
	response.setContentType("text/html");  
	PrintWriter out = response.getWriter();  
	String roll,name,email,title,domain,abs;
	roll=  request.getParameter("rolls");
	name=  request.getParameter("names");
	email=  request.getParameter("email");
	title=  request.getParameter("title");
	domain=  request.getParameter("domain");
	abs=  request.getParameter("abs");	
	  Student_Basic c = new Student_Basic();
	  PersistenceManager pm = PMF.get().getPersistenceManager();
	  try 
	  {
	   pm.makePersistent(c);
	   Query q = pm.newQuery(Student_Basic.class);
        q.setFilter("id == '" + roll + "'");
		List<Student_Basic> rollresult = (List<Student_Basic>) q.execute(roll);
		q.setFilter("title == '" + title + "'");
		List<Student_Basic> titleresult = (List<Student_Basic>) q.execute(title);

			if(!rollresult.isEmpty())
			{
			     out.print("Already Registered!!"); 

		    }  
			else if(!titleresult.isEmpty())
			{
			     out.print("Title Already Chosen!!"); 

				
			}
		    else
		    {  
		    	  c.setId(roll);
				  c.setName(name);
				  c.setEmail(email);
				  c.setTitle(title);
				  c.setDomain(domain);
				  c.setAbstract(abs);
				  out.print("Registered Successfully..");  

			}
	 
	  } 
	
	  finally 
	  {
	  	pm.close();
	  }
	       


}

}
