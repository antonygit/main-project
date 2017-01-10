<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PRO-TRACK</title>
 
<link href="C:\Users\CLIENT\Desktop\main\staff.png" type="image/png" rel="index" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
  <script>
  var guide="";
  var parser="";
  var g1="";
  $(document).ready(function() {
		$(".abst").click(function() {
			var roll=$(this).val();
			$.ajax({
				type: "POST",
				url: 'Servlet3',
				data:{"roll":roll},
				success: function (res) {
			  	$("#abstract").html(res); 			
				 },
				   });
			});
		});
  //final submission
  $(document).ready(function() {
	  g1="";
		$("#submit").click(function() {
			var dat=parser;
			var s=dat.split("$");
			var roll=s[0];
			var guide=g1;
			$.ajax({
				type: "POST",
				url: 'Servlet4',
				data:{"roll":roll,"guide":guide},
				success: function (res) {
			  	   $('#myModal2').hide();
			  	   $(".modal-backdrop.in").hide(function(){
			  			$("#mess").css("visibility","visible");
			 			$("#mess").fadeIn(900);
						$("#mess").val(res);
			  			$("#mess").fadeOut(900);
			  			$("#"+roll+"ok").css("visibility","hidden");
			  			$("#"+roll+"cancel").css("visibility","hidden");
			  			$("#"+roll).css("visibility","hidden");
			  			$("#"+roll+"otable").html(guide);
			  			$("#"+roll+"oktable").html("Approved");	  	
 
		  		 });
			},	
	   });
			
});
 
	});
  
  //show result showapproval
  /*  $(document).ready(function() {
			$.ajax({
				type: "POST",
				url: 'Servlet5',
				success: function (res) 
				{
					var dat=res.split("$");
					for(var i=0;i<dat.length-1;i++)
						{
						$("#"+dat[i]+"ok").css("visibility","hidden");
			  			$("#"+dat[i]+"cancel").css("visibility","hidden");
			  			$("#"+dat[i]).css("visibility","hidden");
			  			$("#"+dat[i]+"otable").html(dat[i+1]);
			  			$("#"+dat[i]+"oktable").html("Approved");
			  			i=i+1;
						}
				
									
				 },
			});
			});
  
  *///final trigger
  
   $(document).ready(function(){
      $(".ok").click(function() { 
    	  if(guide=="Select guide"||guide=="")
    		  {
		  	       $('#myModal2').hide();
		  	     $(".modal-backdrop.in").hide();
    		       $("#mess").css("visibility","visible");
	 		       $("#mess").fadeIn(800);
				   $("#mess").val("Please select the guide!!");
	  			   $("#mess").fadeOut(800);    
    		  }
    	  else
    		  {
    		   alert("fg");
    		   $(".ok").attr( "data-target","#myModal2");
        	   var parse= $(this).val();
        	    parser=parse;
	  			parse=parse.split("$");
	  			$("#reg").html(parse[0]);
	  			$("#names").html(parse[1]);
	  			$("#emails").html(parse[2]);
	  			$("#dom").html(parse[3]);
	  			$("#tit").html(parse[4]);
	  			$("#guide").html(guide);
	  			g1=guide;
	  			guide="";
	  			 

	  			 
    		  }

    	  $("#"+parse[0]+"o").prop('selectedIndex',0);
    	  
    	  
          
      }); 
  });

  $(document).ready(function(){
	  $('select').on('change', function() {
		  guide=this.value;
		})
  });

  
  
  var delreg="";
  
  $(document).ready(function(){
      $(".cancel").click(function() { 
    	  delreg=$(this).val();
    	  $('#myModal1').hide();
 	       $(".modal-backdrop.in").hide();
    		 $(".cancel").attr( "data-target","#myModal1");
        	
    	  
          
      }); 
  });
  
  
  $(document).ready(function() {
		$("#delete").click(function() {
			$.ajax({
				type: "POST",
				url: 'Servlet6',
				data:{"roll":delreg},
				success: function (res) {
					
					 $('#myModal1').hide();
			  	       $(".modal-backdrop.in").hide();
	    		       $("#mess").css("visibility","visible");
		 		       $("#mess").fadeIn("slow");
					   $("#mess").val("Deleted!!");
		  			   $("#mess").fadeOut("slow");    
				     	$("#"+delreg+"del").fadeOut("slow");
			  	   
			},	
	   });
			
});
 
	});
  
  
  
  
  </script>

  <style type="text/css">
<!--
 

#header
{
	position:absolute;
	left:-3px;
	width:1369px;
	height:54px;
	top: -2px;
}
#footer
{
	position:absolute;
	left:-1px;
	width:1367px;
	height:35px;
	top:627px;
	background-color:#C0DCC0;
	border-top:ridge;
	
}
#apDiv1 {
	position:absolute;
	width:51px;
	height:24px;
	z-index:1;
	left: 1167px;
	top: 18px;
}
 


 
#apDiv3 {
	position:absolute;
	width:332px;
	height:41px;
	z-index:3;
	left: 76px;
	top: 7px;
}

 



#grllog {
	position:absolute;
	width:94px;
	height:78px;
	z-index:5;
	left: 260px;
	top: 58px;
	cursor:pointer;
	font-family:Geneva, Arial, Helvetica, sans-serif;
	}
#name {
	position:absolute;
	width:239px;
	height:31px;
	z-index:3;
	left: 73px;
	top: 8px;
}
#crew {
	position:absolute;
	width:46px;
	height:37px;
	z-index:4;
	left: 455px;
	top: 53px;
}
 
body {
	background-color:#f0f0f1;
	overflow: hidden;
}

#ruler {
	position:absolute;
	width:432px;
	height:31px;
	z-index:8;
	left: 437px;
	top: 108px;
}
 hr
 {
  border: 0; 
  height: 1px; 
  background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);

 
 }
 #hrr
 {

  border: 0; 
  height: 1px; 
  background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);

 
 }

#mess {
	position:absolute;
	width:364px;
	height:40px;
	z-index:4;
	left: 505px;
	top: -2px;
	background-color:#FFCC33;
	border-radius:5px;
	border:none;
	visibility:hidden;
	text-align: center;
	font-size: 16px;
	color:black;
	 
	 
}
#ser
{
overflow:scroll;
}
#title {
	position:absolute;
	width:253px;
	height:26px;
	z-index:4;
	left: 546px;
	top: 57px;
	letter-spacing:4px;
	font-size:22px;
}
#apDiv2 {
	position:absolute;
	width:191px;
	height:16px;
	z-index:5;
	left: 559px;
	top: 74px;
}
#leftbar {
	position:absolute;
	width:452px;
	height:529px;
	z-index:6;
	background-color:#FAFAFA;
	left: 4px;
	top: 101px;
	overflow-y:scroll;
}
#rightbar {
	position:absolute;
	width:1150px;
	height:530px;
	z-index:4;
	left: 456px;
	top: 99px;
	background-color:#FAFAFA;
		overflow-y:scroll;
}
#lefttitle{
	position:absolute;
	width:286px;
	height:31px;
	z-index:7;
	left: -8px;
	top: 4px;
	letter-spacing:4px;
	font-size:22px;
}
#list {
	position:absolute;
	width:367px;
	height:115px;
	z-index:5;
	left: 5px;
	top: 64px;
}
#righttitle {
	position:absolute;
	width:890px;
	height:124px;
	z-index:1;
	letter-spacing:4px;
	font-size:22px;
	left: 0px;
	top: -3px;
}
table {
    border-collapse: collapse;
    width: 108%;
	font-size:14px;
	font-weight:200;
	letter-spacing:normal;
}

th, td {
    padding: 10px;
    text-align:center;
    border-bottom: 1px solid #ddd;
}
#mess{
	position:absolute;
	width:227px;
	height:37px;
	z-index:5;
	left: 556px;
	top: -2px;
	background-color:#99CCCC;
	border-radius:5px;
	border:none;
	visibility:hidden;
	text-align: center;
	font-size: 16px;
}
 
select {
padding: 5px 3px 3px 4px;
    background:#b3e0ff;
    color:black;
    border:none;
    outline:none;
    display: inline-block;
    cursor:pointer;
    border-radius:5px;
}
 

@media screen and (-webkit-min-device-pixel-ratio:0) {
    select {padding-right:18px}
}

#abstract
{
word-wrap:break;
overflow-y:scroll;
}

.glyphicon.glyphicon-user {
    font-size: 35px;
    color:#006080;
}

-->
  </style>
</head>

<body>
<input type="text" id="mess" disabled/>

<div id="mess"></div>
<div id="rightbar">
  <div id="righttitle">
    <p><img src="images/user1.png" width="74" height="69" /> Student List</p>
    
<table>
  <tr>
    <th>Roll No</th>
    <th>Name</th>
    <th>Email</th>
    <th>Domain name</th>
    <th>Title</th>
    <th>Abstract</th>
    <th>Guide</th>
    <th>Approval</th>
    
  </tr>
  <%@page import= "java.io.*,java.util.*,javax.jdo.PersistenceManager,javax.jdo.Query,javax.jdo.PersistenceManager,com.google.appengine.api.datastore.KeyFactory,com.college.project.*,com.college.project.Faculty_Basic,java.io.IOException,java.io.PrintWriter" %>
<%
PersistenceManager pm = PMF.get().getPersistenceManager();
PersistenceManager pm1 = PMF.get().getPersistenceManager();

Query q = pm.newQuery(Student_Basic.class);
Query q1 = pm1.newQuery(Faculty_Basic.class);


List<Student_Basic> results = null;
List<Faculty_Basic> results1 = null;

try {
	results = (List<Student_Basic>) q.execute();
	List<Student_Basic> cc =(List<Student_Basic>)results;
	
	results1 = (List<Faculty_Basic>) q1.execute();
	List<Faculty_Basic> bb =(List<Faculty_Basic>)results1;

	if (!cc.isEmpty()&&!bb.isEmpty()) 
	{
		for(Student_Basic c:cc )
		{
			if(c.getId()!=null)
			{
			
%>
<tr>
<td><%=c.getId()%></td>
<td><%=c.getName()%></td>
<td><%=c.getEmail()%></td>
<td><%=c.getDomain()%></td>
 <td><%=c.getTitle()%></td>
 <td><input type="image" style="outline: none;" value=<%=c.getId()%> src="images/abs.png" width="30px" height="40px"  style="cursor: pointer;" data-toggle="modal" data-target="#myModal" class="abst" id="abs"/></td>
 <td id=<%=c.getId()+"otable"%>>
 <select class="form-control" id=<%=c.getId()+"o"%>>
 <option selected >Select guide</option>
  <%
for(Faculty_Basic b:bb )
{
	if(b.getId()!=null)
	{
		%>
  <option  class="staf" ><%=b.getName()%></option>
  <% }
}
	
	%>
</select>
</td>
<td id=<%=c.getId()+"oktable"%>>
 <button type="button" style="background: none;border: none; outline: none;" value=<%=c.getId()+"$"+c.getName()+"$"+c.getEmail()+"$"+c.getDomain()+"$"+c.getTitle()+"$"+c.getGuide()%> class="ok" id=<%=c.getId()+"ok" %>  data-toggle="modal"  >
          <span class="glyphicon glyphicon-ok"></span>
        </button> <button type="button"  style="background: none;border: none; outline: none;" class="cancel" value=<%=c.getId() %> id=<%=c.getId()+"cancel" %> data-toggle="modal" >
          <span class="glyphicon glyphicon-remove"></span>  
        </button>
<!-- <input type="checkbox"   unchecked data-toggle="toggle" data-size="small" data-on="yes" data-off="No"   data-onstyle="success" data-offstyle="danger"> <button data-toggle="modal" data-target="#myModal1">YES</button> -->

</td>
<% 
					
				}
			}
		}
	

} 

finally
{
	q.closeAll();
	q1.closeAll();
	pm.close();
	pm.close();
	pm1.close();
}




%>
</table>
</div>
</div>
<div class="container">
<div class="container-fluid">

  <div class="row">
    <div class="col-sm-4" style="background-color:#2e363e; width:2254px; " id="header">
      <p><span>
          <img src="images/logo1.png" class="img-rounded" alt="Cinque Terre" width="49" height="41" vspace="7" >  </span> &nbsp;&nbsp;&nbsp;</p>
      <div id="title">Group Allocation </div>
      <div id="apDiv2">
        <hr /></div>
      <div id="leftbar">
      <div id="lefttitle"> <img src="images/staff.png" width="70" height="41" />Staff List  
        <div id="pos" style="position:absolute; left: 12px; width: 343px; top: 32px;"> 
          <hr id="hrr"  /></div> 
         
       	  </div>
    <div id="list">
	      <p>
          <table>
  <tr>
    <th>S.No</th>
    <th>Name</th>
    <th>Specialization</th>
     <th>Total Student's</th>
  </tr>
   <%@page import= "java.io.*,java.util.*,javax.jdo.PersistenceManager,javax.jdo.Query,javax.jdo.PersistenceManager,com.google.appengine.api.datastore.KeyFactory,com.college.project.*,com.college.project.Faculty_Basic,java.io.IOException,java.io.PrintWriter" %>
        
         <%
         int i=0;
         PersistenceManager pem = PMF.get().getPersistenceManager();
         Query que = pem.newQuery(Faculty_Basic.class);
         List<Faculty_Basic> res = null;
         try {
        		res = (List<Faculty_Basic>) que.execute();
        		List<Faculty_Basic> f =(List<Faculty_Basic>)res;
        		if (!f.isEmpty()) 
        		{
        			for(Faculty_Basic c:f)
        			{
        				if(c.getId()!=null)
        				{



        
        
        %>
         <tr>
         <td><%=++i %></td>
         <td><%=c.getName() %></td>
          <td><%=c.getSpec()%></td>
        
        
        </tr>
        <%
        				}
        			}
        		}
         }
        finally {
        	que.closeAll();
        	pem.close();
        }
        	
        




        %>


 
 
</table>
          </p></div>
                        
                        


       </div> 
        
      </div> 
    </div>
  </div>

  
</div>
 
</div>

<div class="col-sm-4"  id="footer" style="position:absolute;top:713px; width:2223px;height:80px;"></div>
<div id="name"><font style=" letter-spacing:9px; color:#d7dfe2; font-size:23px;">Pro-Track</font></div>

<div class="container">
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><center>Abstract</center></h4>
        </div>
        <div class="modal-body" id="abstract">
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>


<div class="container">
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title"><h3><center> <span class="glyphicon glyphicon-user"></span></center></h3>
        </div>
        <div class="modal-body" id="confirm">
        <center><h4>Are you sure!!</h4></center>
        </div>
        <div class="modal-footer">
                          <button type="button" class="btn btn-default" id="delete" >Delete</button>
        
        </div>
      </div>
      
    </div>
  </div>
  
</div>


<div class="container">
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog" style="width: 783px;">
    
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title"><h3><center> <span class="glyphicon glyphicon-user"></span></center></h3>
        </div>
        <div class="modal-body" id="det">
        <center>
        <table style="width:100%">
        <tr>
        <th>Register Number</th>
         <th>Name</th>
         <th>Email</th>
         <th>Domain Name</th>
         <th>Title</th>
         <th>Guide</th>
        </tr>
        <tr>
        <td id="reg"></td>
        <td id="names"></td>
        <td id="emails"></td>
        <td id="dom"></td>
        <td id="tit"></td>
         <td id="guide"></td>
        
        
        </tr>
       
         

        
        </table>
        
        </center>
        </div>
        <div class="modal-footer">
                  <button type="button" class="btn btn-default" id="submit" >Submit</button>
        
        </div>
      </div>
      
    </div>
  </div>
  
</div>








</body>
</html>
