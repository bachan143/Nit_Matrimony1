<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<h1>update photo</h1>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"></td>
		</tr>

		<tr>
			<td>  <%
       	Users u1 = new Users();
       	u1.setEmailid((String)session.getAttribute("emailid"));
      
        String p1 = UsersDao.getPhotoPath(u1);
        System.out.println (p1);
        System.out.println("------****");
        String p2 = "profileimg/profile-default.jpg";
        
       %>
       <%
         if(p1 != null)
         {
        	 System.out.println("-------------------+++++++++++++");
        	 out.println("<img src='"+p1+"' class='img-rounded' height='300px'/>");
         }
               
         else
         	{
        	 	System.out.println("-------------------+++++++++++++========");
        	 
        		out.println("<img src='"+p2+"' class='img-rounded' height='300px'/>");
         	}
       
       %></td>
			<td>
		        <form action="mm.controller.UpdatePhoto2" enctype="multipart/form-data" method="post">
					Select image file to uplode:<input type="file" name="fileName" height="100px" width="250px"  style="padding: 15px; background-color: orange; color: white">
					<input type="submit" value="upload">
				</form>
				<h4>Image size 15mb.jpeg/gif/png/bmp</h4>
				<br>
				<br>
				<h3> <a href="http://www.webwhatsapp.com"><i class="fa fa-whatsapp"></i></a>    WhatsApp your photos to +917504517033 and we will upload them instantly</h3>
		    	<h1> <a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a>    Select photos from your Facebook account</h1>
				 
			</td>
			</tr>
			<tr>
			<td></td>
			    <td  align="right">
			    <br>
			    <br>
			    <a href="userWindow.jsp">
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