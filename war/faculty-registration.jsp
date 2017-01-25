<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PRO-TRACK</title>
 
<link href="images/logo1.png" type="image/png" rel="stureg" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script>
 
 $(document).ready(function() {
		$("#f1").submit(function() {
			  $("#mess").css("visibility","visible");
	 			$("#mess").fadeIn(900);
				 $("#mess").val("Please Wait..");
			$.ajax({
				type: "POST",
				url: 'Servlet1',
				data:$("#f1").serialize(),
				success: function (data) {
						 $("#mess").val(data);
			  			$("#mess").fadeOut(2400);
			  			$("#f1").trigger('reset');

					
					 
				},
				
	    });
			return false;

			 
		});
	});

 
 </script>
  <style type="text/css">
<!--
 #name {
	position:absolute;
	width:239px;
	height:31px;
	z-index:3;
	left: 73px;
	top: 8px;
}

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
 
 
body {
	background-color:#f0f0f1;
	 overflow: hidden;
	
}

 hr
 {
  border: 0; 
  height: 1px; 
  background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);

 
 }

.container {
 max-width: 360px;
     height:13px;

 }

.divider {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 5px;
}

.divider hr {
  margin: 7px 0px;
  width: 35%;
}

.left { float: left; }

.right { float: right; }
#mess {
	position:absolute;
	width:364px;
	height:40px;
	z-index:4;
	left: 625px;
	top: -2px;
	visibility:hidden;
	background-color:#FFCC33;
	border-radius:5px;
	border:none;
	text-align: center;
	font-size: 16px;
	color:black;
	 
	 
}
 

</style>

-->
  
</head>

 
<body>

<div class="container">
<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="post" action="Servlet1" id="f1" name="f1">
						<div class="form-group">
							<h2>Register here!!</h2> <hr>
 						</div>
 						 <div class="form-group">
 							<input id="names" name="id" type="text" maxlength="50" class="form-control" placeholder="Enter your Id" pattern="[0-9]{3,50}" required>
						</div>
 						
                        <div class="form-group">
 							<input id="names" name="names" type="text" maxlength="50" class="form-control" placeholder="Enter your name" pattern="[a-zA-Z_ ]{3,50}" required>
						</div>
						<div class="form-group">
 							<input id="email" name="email" type="text" maxlength="50" class="form-control" placeholder="Enter email-id (gmail only)" pattern="(www)[.][a-zA-Z0-9.,?'!@#$%^&*]{3,50}(@)(gmail)(.)(com)" required >
						</div>
						<div class="form-group">
 							<input id="spec" name="spec" type="text" maxlength="25" class="form-control" p length="40" placeholder="Enter specialization subject.." required>
						</div>
						<div class="form-group">
                      <input type="submit" name="sub"id="sub"class="btn btn-default" value="Submit"style="width: 323px; color:white; background-color:#006699">
                    
						</div>
						
						<hr>
					</form>
				</div>
			</div>
		</div>
<div class="container-fluid">

  <div class="row">
    <div class="col-sm-4" style="background-color:#2e363e; width:2254px; " id="header">
      <p><span>
          <img src="images/logo1.png" class="img-rounded" alt="Cinque Terre" width="49" height="41" vspace="7" >  </span> &nbsp;&nbsp;&nbsp;></p>
                <input type="text" id="mess" disabled/>
          
      </div>
  </div>
</div>
</div>

<div class="col-sm-4"  id="footer" style="position:absolute;top:713px; width:2223px;height:80px;"></div>
<div id="name"><font style=" letter-spacing:9px; color:#d7dfe2; font-size:23px;">Pro-Track</font></div>






</body>
</html>
  