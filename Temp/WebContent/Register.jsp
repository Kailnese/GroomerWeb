<%@ page import="Connection.getData" %>

<html>
<head>
<title>Reigster</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript">
	function myFunction(){
		
		if(document.getElementById("password").value == null || document.getElementById("password").value == ""){
			alert("password must be fill");
		}
		if(document.getElementById("email").value == null || document.getElementById("email").value == ""){
			alert("email must be fill");
		}
		if(document.getElementById("dogName").value == null || document.getElementById("dogName").value == null){
			
			alert("must add at least one dog")
		}
	}
</script>

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- Save for Web Slices (test) -->
<form action="login" method="post">
<table id="__01" width="1729" height="964" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td rowspan="40">
			<img src="images/Register_01.gif" width="542" height="963" alt=""></td>
		<td colspan="20">
			<img src="images/Register_02.gif" width="1186" height="112" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="112" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="3">
			<img src="images/Register_03.gif" width="157" height="109" alt=""></td>
		<td colspan="4" rowspan="2">
			<img src="images/Register_04.gif" width="221" height="86" alt=""></td>
		<td colspan="14">
			<img src="images/Register_05.gif" width="808" height="58" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="58" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="3">
			<img src="images/Register_06.gif" width="125" height="57" alt=""></td>
		<td rowspan="12">
			<img src="images/Register_07.gif" width="13" height="136" alt=""></td>
		<td colspan="11">
			<img src="images/Register_08.gif" width="670" height="28" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="28" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="images/Register_09.gif" width="221" height="23" alt=""></td>
		<td colspan="3" rowspan="27">
			<img src="images/Register_10.gif" width="145" height="303" alt=""></td>
		<td rowspan="4">
			<img src="images/Register_11.gif" width="139" height="51" alt=""></td>
		<td colspan="4" rowspan="4">
			<img src="images/Register_12.gif" width="103" height="51" alt=""></td>
		<td colspan="2" rowspan="3">
			<input type="text" name="dogName" id="dogName" placeholder="e.g. Cici" style="width: 235px; height: 39px"></td>
		<td rowspan="37">
			<img src="images/Register_14.gif" width="55" height="765" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="23" alt=""></td>
	</tr>
	<tr>
		<td rowspan="36">
			<img src="images/Register_15.gif" width="46" height="742" alt=""></td>
		<td colspan="2" rowspan="6">
			<img src="images/Register_16.gif" width="152" height="50" alt=""></td>
		<td colspan="3">
			<img src="images/Register_17.gif" width="180" height="6" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="6" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="22">
			<img src="images/Register_18.gif" width="66" height="224" alt=""></td>
		<td colspan="2" rowspan="4">
			<input type="text" name="firstName" id="firstName" placeholder="e.g. Smith" style="width: 232px; height: 39px"></td>
		<td rowspan="25">
			<img src="images/Register_20.gif" width="12" height="274" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/Register_21.gif" width="228" height="13" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="13" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="images/Register_22.gif" width="239" height="8" alt=""></td>
		<td colspan="3" rowspan="5">
			<input type="text" name="breed" id="breed" style="width: 239px; height: 39px;"></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td rowspan="5">
			<img src="images/Register_24.gif" width="139" height="38" alt=""></td>
		<td colspan="3" rowspan="7">
			<img src="images/Register_25.gif" width="100" height="56" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images/Register_26.gif" width="227" height="9" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images/Register_27.gif" width="152" height="16" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="4" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="5">
			<input type="text" name="lastName" id="lastName" style="width: 232px; height: 39px"></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="12" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="5">
			<img src="images/Register_29.gif" width="152" height="40" alt=""></td>
		<td colspan="3" rowspan="2">
			<img src="images/Register_30.gif" width="231" height="19" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/Register_31.gif" width="139" height="18" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td rowspan="16">
			<img src="images/Register_32.gif" width="13" height="195" alt=""></td>
		<td rowspan="9">
			<img src="images/Register_33.gif" width="3" height="87" alt=""></td>
		<td colspan="2" rowspan="6">
			<input type="text" name="dogBirth" id="dogBirth" style="width: 235px; height: 39px"></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="7" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="6">
			<img src="images/Register_35.gif" width="224" height="39" alt=""></td>
		<td rowspan="8">
			<img src="images/Register_36.gif" width="15" height="80" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images/Register_37.gif" width="227" height="18" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="13" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images/Register_38.gif" width="152" height="11" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="4">
			<input type="text" name="Address" id="Address" style="width: 232px; height: 39px"></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="6" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="4">
			<img src="images/Register_40.gif" width="152" height="55" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="7" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="3">
			<img src="images/Register_41.gif" width="228" height="48" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="7" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2">
			<img src="images/Register_42.gif" width="224" height="41" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="19" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/Register_43.gif" width="227" height="22" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="22" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/Register_44.gif" width="152" height="8" alt=""></td>
		<td colspan="2" rowspan="2">
			<input type="text" name="firstPhone" id="firstPhone" placeholder="xxx-xxx-xxxx" style="width: 232px; height: 39px"></td>
		<td colspan="2" rowspan="17">
			<img src="images/Register_46.gif" width="201" height="570" alt=""></td>
		<td colspan="4" rowspan="5">
			<img src="images/Register_47.gif" width="77" height="62" alt=""></td>
		<td rowspan="17">
			<img src="images/Register_48.gif" width="192" height="570" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images/Register_49.gif" width="152" height="45" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="31" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/Register_50.gif" width="227" height="14" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="14" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/Register_51.gif" width="152" height="5" alt=""></td>
		<td colspan="2" rowspan="3">
			<input type="text" name="minorPhone" id="minorPhone" style="width: 232px; height: 39px"></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="3">
			<img src="images/Register_53.gif" width="186" height="50" alt=""></td>
		<td rowspan="13">
			<img src="images/Register_54.gif" width="32" height="512" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="4" alt=""></td>
	</tr>
	<tr>
		<td colspan="4" rowspan="12">
			<img src="images/Register_55.gif" width="77" height="508" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="33" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/Register_56.gif" width="227" height="13" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="13" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/Register_57.gif" width="186" height="8" alt=""></td>
		<td colspan="5" rowspan="2">
			<input type="text" name="email" id="email" placeholder="student@gmail.com" style="width: 320px; height: 39px"></td>
		<td colspan="2" rowspan="8">
			<img src="images/Register_59.gif" width="81" height="236" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2">
			<img src="images/Register_60.gif" width="186" height="40" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="32" alt=""></td>
	</tr>
	<tr>
		<td colspan="5" rowspan="2">
			<img src="images/Register_61.gif" width="316" height="15" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2">
			<img src="images/Register_62.gif" width="186" height="22" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="7" alt=""></td>
	</tr>
	<tr>
		<td colspan="5" rowspan="2">
			<input type="password" name="password" id="password" style="width: 320px; height: 39px"></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="15" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2">
			<img src="images/Register_64.gif" width="186" height="36" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="24" alt=""></td>
	</tr>
	<tr>
		<td colspan="5" rowspan="2">
			<img src="images/Register_65.gif" width="316" height="142" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="12" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="3">
			<img src="images/Register_66.gif" width="186" height="356" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="130" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images/Register_67.gif" width="227" height="226" alt=""></td>
		<td colspan="4">
			<button style="background-image: url('images/Register_68.gif'); width: 152; height: 50" type="submit" onclick="myFunction()"></button></td>
		<td rowspan="2">
			<img src="images/Register_69.gif" width="18" height="226" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="50" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="images/Register_70.gif" width="152" height="176" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="1" height="176" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="542" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="46" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="111" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="41" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="34" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="32" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="114" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="113" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="12" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="13" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="64" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="63" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="18" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="139" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="62" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="23" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="15" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="3" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="36" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="192" height="1" alt=""></td>
		<td>
			<img src="images/&#x5206;&#x9694;&#x7b26;.gif" width="55" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
</form>
<!-- End Save for Web Slices -->
</body>
</html>