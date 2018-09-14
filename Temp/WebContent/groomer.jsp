<%@ page import="java.util.List"%>
<%@ page import="b.*"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
        #imgdiv{
            background-image: url("10.jpg");
            width: 1920px;
            height: 160px;
        }
        td{
              height: 30px;
		      font-family: "Bodoni MT Black";
		      font-size: 22px;
		      opacity: 0.8;
		      color: #49a066;
        }
        #comment{
              height: 30px;
		      font-family: "Time New Roman";
		      font-size: 12px;
		      opacity: 0.8;
		      color: balck;
        }
    </style>
</head>
<body style="margin: 0px">
<div id="imgdiv"></div>
<div align="center">
	<table border="1">
		<tr>
			<td align="center" colspan="7">Time Schedule of all Customer</td>
		</tr>
		<tr>
			<td>Customer Name</td>
			<td>Dog Name</td>
			<td>Dog Breed</td>
			<td>Dog Birth</td>
			<td>Appointment</td>
			<td>Service</td>
			<td>Comment</td>
		</tr>
			<% 
				List<Customer> cus = (List<Customer>)request.getAttribute("cusInfo");
				if(cus == null || cus.size() <1 ){
					out.print("");
				}else{
					for(Customer cs : cus){
						%>
						<tr>
							<td><%= cs.getFirstName()+" "+cs.getLastName() %></td>
							<td><%= cs.getDogName() %></td>
							<td><%= cs.getDogBreed() %></td>
							<td><%= cs.getDogBirth() %></td>
							<td><%= cs.getAppTime() %></td>
							<td><%= cs.getService() %></td>
							<td style="width:300px"><textarea id="comment" name="comment" style="width:100%" readonly><%= cs.getComment() %></textarea></td>
						</tr>
						<% 
					}
				}
			
			%>
	</table>
</div>
</body>
</html>