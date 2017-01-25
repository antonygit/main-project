<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="C:\Users\CLIENT\Desktop\main\staff.png" type="image/png" rel="index" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset='utf-8' />
<link href='calcss/fullcalendar.min.css' rel='stylesheet' />
<link href='calcss/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='javascript/lib/moment.min.js'></script>
<script src='javascript/fullcalendar.min.js'></script>
<script>
$(document).ready(function() {

    var calendar = $('#calendar').fullCalendar({
    defaultView: 'month',
    editable: true,
      selectable: true,
   events: [{title: 'All Day Event',start: '2017-01-12'}],
    //header and other values
    select: function(start, end, allDay) {
         $('#myModal #apptStartTime').val(start);
         $('#myModal #apptEndTime').val(end);
         $('#myModal #apptAllDay').val(allDay);
        $("#myModal").modal("show");
     }
    

  });

$('#submit').on('click', function(e){
  // We don't want this to act as a link so cancel the link action
  e.preventDefault();

  doSubmit();
});

function doSubmit(){
    $("#myModal").modal('hide');
    alert("form submitted");
        
    $("#calendar").fullCalendar('renderEvent',
        {
            title: $('#status').val(),
            start: new Date($('#apptStartTime').val()),
            end: new Date($('#apptEndTime').val()),
            allDay: ($('#apptAllDay').val() == "true"),
        },
        true);
   }
});

</script>


</head>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
<body>
<div id="calendar"></div>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><center>
         <img src="images/dash.png" width="40" height="40"/>
        </center></h4>
      </div>
      <div class="modal-body">
      
     <textarea class="form-control" rows="5" id="status" placeholder="Status of your project..."></textarea><br>
                  <input type="hidden" id="apptStartTime"/>
                  <input type="hidden" id="apptEndTime"/>
                  <input type="hidden" id="apptAllDay" />
  
          
      </div>
      <div class="modal-footer">
                        <button type="button" class="btn btn-default" id="submit" value="211414621003" >Submit</button>
      
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>



</body>
</html>