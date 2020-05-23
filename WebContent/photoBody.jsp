<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
	body{
		background-color: white;
	}
	</style>
</head>
<body>
<div class="grid_3">
     <div class="container">

<div>
<table>
	.		<tr>
			<td>
				<dir><img src="images/i6.png" height="100px" width="100px"></dir>
			</td>
			<td>
				<h1>Upload Your Photo</h1>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"></td>

		<tr>
			<td  padding-left: 20" align="center"><img src="images/i2.png"></td>
			<td>
		        <form action="mm.controller.UpdatePhoto" enctype="multipart/form-data" method="post">
					Select image file to uplode:<input type="file" name="fileName" height="100px" width="250px"  style="padding: 15px; background-color: orange; color: white">
					<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="upload">
				</form>
				
				<br>
				<br>
				<h4> <a href="http://www.webwhatsapp.com"><i class="fa fa-whatsapp"></i></a>    WhatsApp your photos to +917504517033 and we will upload them instantly</h4>
		    	<h4> <a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a>    Select photos from your Facebook account</h4>
				 
			</td>
			</tr>
			<tr>
			<td></td>
			    <td  align="right">
			    <br>
			    <br>
			    <a href="castdoshSpecial.jsp">
				   <input type="button" value="I'll do this later >"></input>
				   </a>
				   
			   </td>
		</tr>
		
	</table>
	</div>
	</div>
	</div>
</body>
</html>