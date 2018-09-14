<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
	#hed{
      margin-top: 0 auto;
      background-color: white;
    }
    p{
      text-align:center;
      font-family: "Algerian";
      font-weight: bold;
      font-size: 400%;
      margin: 0 auto;
    }
    td{
      font-weight: bold;
      font-size: 140%;
      margin: 0 auto;
      color: #49a066;
    }
    #imgdiv{
      float: right;
      background-image: url('./2.jpg');
      height: 440px;
      width: 500px;
    }
	</style>
	<script type="text/javascript">
		function editInfo(){
			var cu = document.getElementById("submit");
			cu.style.visibility = "visible";

			var lastName = document.getElementById("lastName");
			lastName.removeAttribute("readOnly");
			lastName.style.border = "3px #9be8c8 solid";

			var firstName = document.getElementById("firstName");
			firstName.removeAttribute("readOnly");
			firstName.style.border = "3px #9be8c8 solid";

			var Address = document.getElementById("Address");
			Address.removeAttribute("readOnly");
			Address.style.border = "3px #9be8c8 solid";

			var phone = document.getElementById("phone");
			phone.removeAttribute("readOnly");
			phone.style.border = "3px #9be8c8 solid";

			var minorPhone = document.getElementById("minorPhone");
			minorPhone.removeAttribute("readOnly");
			minorPhone.style.border = "3px #9be8c8 solid";

			var dogName = document.getElementById("dogName");
			dogName.removeAttribute("readOnly");
			dogName.style.border = "3px #9be8c8 solid";

			var breed = document.getElementById("breed");
			breed.removeAttribute("readOnly");
			breed.style.border = "3px #9be8c8 solid";

			var birth = document.getElementById("birth");
			birth.removeAttribute("readOnly");
			birth.style.border = "3px #9be8c8 solid";
		}
		function hola(){
			alert("Information was updated! directing to main page");
		}
	</script>
</head>
<body style="margin: 0">
<div id="hed" style=" height: 100px">
	<p>Personal Information</p>
</div>
<div style="width: 46%; float: left; margin-left: 50px;">
<form method="post" action="editUser">
	<table width="100%" border="0" cellspacing="60" cellpadding="0" style="border:7px #9be8c8 solid; border-radius: 8px">
		<tr>
			<td>Last Name: </td>
			<td><input type="text" id="lastName" name="lastName" value="<%= session.getAttribute("lastName") %>" readonly style="border:0"></td>
		</tr>
		<tr>
			<td>First Name: </td>
			<td><input type="text" id="firstName" name="firstName" value="<%= session.getAttribute("firstName") %>" readonly style="border: 0;"></td>
		</tr>
		<tr>
			<td>Address: </td>
			<td><input type="text" id="Address" name="Address" value="<%= session.getAttribute("address") %>" readonly style="border: 0;"></td>
		</tr>
		<tr>
			<td>First Phone: </td>
			<td><input type="text" id="phone" name="phone" value="<%= session.getAttribute("phone") %>" readonly style="border: 0;"></td>
		</tr>
		<tr>
			<td>Second Phone: </td>
			<td><input type="text" id="minorPhone" name="minorPhone" value="<%= session.getAttribute("minorPhone") %>" readonly style="border: 0;"></td>
		</tr>
		<tr>
			<td>Dog info: </td>
			<td>
				<table>
					<tr>
						<td style="font-size: 90%;color: #49a066;">Dog Name:</td>
						<td style="font-size: 90%;color: #49a066;"><input type="text" id="dogName" name="dogName" value="<%= session.getAttribute("dogName") %>" readonly style="border: 0;"></td>
					</tr>
					<tr>
						<td style="font-size: 90%;color: #49a066;">Breed:</td>
						<td style="font-size: 90%;color: #49a066;"><input type="text" id="breed" name="breed" value="<%= session.getAttribute("breed") %>" readonly style="border: 0;"></td>
					</tr>
					<tr>
						<td style="font-size: 90%;color: #49a066;">Date of Birth:</td>
						<td style="font-size: 90%;color: #49a066;"><input type="text" id="birth" name="birth" value="<%= session.getAttribute("birth") %>" readonly style="border: 0;"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<input type="submit" name="submit" id="submit" value="submit" style="height: 30px;width: 80px;border-radius: 15px;margin-top: 10px;margin-left: 500px;visibility:hidden" onclick="hola()"></form>
</div>
<div>
<input type="button" name="edit" id="edit" value="edit information" style="margin-left: 30px;height: 30px; width: 110px; border-radius: 20px; " onclick="editInfo()">
</div>
<div id="imgdiv">
</div>

</body>
</html>