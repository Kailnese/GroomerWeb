<!DOCTYPE html>
<html>
<head>
	<title>Schedule</title>
	<style type="text/css">
		#imgdiv{
			background-image: url("./dog.jpg");
			margin: 0 auto;
			height: 254px;
      		width: 1170px;
		}
		#headd{
			text-align:center;
			font-family: "Algerian";
		    font-weight: bold;
		    font-size: 400%;
		}
		td{
	      font-weight: bold;
	      font-size: 140%;
	      margin: 0 auto;
	      color: #49a066;
   		}
   		input{
   		  font-weight: bold;
	      font-size: 140%;
	      margin: 0 auto;
	      color: #49a066;
	      height: 50px;
   		}

	</style>
</head>
<body style="margin: 0;">
<div id="imgdiv"><p id="headd" style="margin: 0 auto; border:0;">schedule</p></div>
<div id="timetable" style="margin: 0 auto;width: 800px;height:500px;">
	<table border="1" style="width: 100%; height: 100%;text-align:center;border:7px #2C8F93 solid; border-radius: 8px" >
		<tr>
			<td colspan="3" style="text-align:center;">Appointment</td>
		</tr>
		<tr>
			<td>Time</td>
			<td>Service</td>
			<td>Comment</td>
		</tr>
		<tr>
			<td><%= session.getAttribute("Time") %></td>
			<td><%= session.getAttribute("service") %></td>
			<td><textarea id="comment" name="comment" style="width:90%;height: 95%;margin-top: 7px; border:0;" readonly><%= session.getAttribute("Comment") %></textarea></td>
		</tr>
	</table>
	<a href="./User.jsp"><input style="margin-left:10px; margin-right: 20px;" type="submit" name="return" id="return" value="return main page"></a>
	<form action="cancel" method="post">
	<input style="margin-right: 20px;" type="submit" name="cancel" id="cancel" value="cancel Appointment"></form>
	<a href="./TimeEdit.jsp">
	<input type="submit" name="edit" id="edit" value="edit Appointment"></a>
</div>
</body>
</html>