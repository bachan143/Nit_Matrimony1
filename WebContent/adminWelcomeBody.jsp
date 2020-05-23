<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
		.mainDiv{

			height: 100px;
			min-width: 49%;
			float: left;
			margin: 50px;
			}
		.con{
		height:600px;
		border-top: 60px solid lightblue;
		border-left: 20px solid lightblue;
		border-right: 20px solid lightblue;
		border-bottom: 60px solid lightblue;
		border-radius: 100px;
		}
	</style>

</head>
<body>
<center class="con">
	
<table style="width: 100%;">
<tr><td>
		<a href="viewFeedback.jsp"  >
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="" src="images/7010.jpg" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Show users feeback </p>
				</div>
			</div>
		</a>
	</td>
	<td>
		<a href="viewUsers.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="" src="images/7013.png" height="100px" width="200px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">View Users list </p>
				</div>
			</div>
		</a>
	</td> 
</tr>
<tr>
<td>
		<a href="deleteUsers.jsp">
			<div class="mainDiv" style="margin-left: 200px;">
				<div class="fimage">
					<img alt="" src="images/7012.png" height="100px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Delete Users </p>
				</div>
			</div>
		</a>
	</td> 
<td>
		<a href="sendMail.jsp">
			<div class="mainDiv">
				<div class="fimage">
					<img alt="" src="images/7011.jpg" height="90px" width="100px;">
				</div>
				<div class="ftext">
					<p style="font-size: 25px; font-weight: bold; color: black;">Send Mail </p>
					
				</div>
			</div>
		</a>
	</td>
	
</tr>

</table>
</center>
</body>
</html>