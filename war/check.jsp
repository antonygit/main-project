<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@ page import="com.college.project.Faculty_Basic" %>
      <%@ page import="com.college.project.Student_Basic" %>
        <%@ page import="com.college.project.*" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ page import="javax.jdo.PersistenceManager" %>
<%@ page import="javax.jdo.Query" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="javax.jdo.PersistenceManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PersistenceManager pm = PMF.get().getPersistenceManager();
PersistenceManager pm1 = PMF.get().getPersistenceManager();

Query q = pm.newQuery(Faculty_Basic.class);
Query q1 = pm1.newQuery(Student_Basic.class);


List<Faculty_Basic> results = null;
List<Student_Basic> results1 = null;

try {
	results = (List<Faculty_Basic>) q.execute();
	List<Faculty_Basic> cc =(List<Faculty_Basic>)results;
	
	results1 = (List<Student_Basic>) q1.execute();
	List<Student_Basic> bb =(List<Student_Basic>)results1;

	if (!cc.isEmpty()&&!bb.isEmpty()) 
	{
		for(Faculty_Basic c:cc )
		{
			if(c.getId()!=null)
			{
			
%>
<p><%out.print(c.getId()); %></p>
<p><%out.print(c.getName()); %></p>
<%
for(Student_Basic b:bb )
{
	if(b.getId()!=null)
	{
		%>
<p><%out.print(b.getId()); %></p>

<% 
					}
				}
			}
		}
	} 
	else 
	{
		
	}

} finally {
	q.closeAll();
	q1.closeAll();
	pm.close();
	pm.close();
	pm1.close();
}




%>



</body>
</html>