<%@page import="java.util.Iterator"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View users</title>


<style type="text/css">
.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
    
}

.active, .accordion:hover {
    background-color: #ccc; 
}

.panel {
    padding: 0 18px;
    display: none;
    background-color: white;
    overflow: hidden;
}
#test {
  padding:40px;
    
}
body {
  background:url('images/users.png');
  style: font-family;
  width: 100%;
  border:2px;
}    

</style>
</head>
<body>
<div class="container">
   <div class="breadcrumb1">
	
	
<center>
<h1>Matrimony Users</h1>
<br>
<br>

<table id = "accordion">
  		<thead>
  			<tr>
  				<th style="min-width:280px;">Email</th>
  				
  				<th style="min-width:180px;">Name</th>
  				<th style="min-width:180px;">Password</th>
  				<th style="min-width:180px;">Photos</th>
  		
  		         <th>DELETE</th>
  				
  			</tr>
  		</thead>
  		<tbody>
  			<%
  				
  				ArrayList<Users> all = UsersDao.fetch();
  				Iterator<Users> it = all.iterator();
  				while(it.hasNext()){
  					Users ps = it.next();
  					%>
  						<tr>
  							<td><%=ps.getEmailid() %></td>
  						   <td> <%=ps.getName() %></td>
  						   <td> 
  						   <button class="accordion">Show Password</button>
							<div class="panel">
  							<p><%=ps.getPassword()%></p>


<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display == "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						     </td>
  							  					  						    						   							
  							<% 
  								String photos=ps.getPhotos();
  								if(photos == null)
  								{
  									String p1 = "profileimg/g.jpg";
  							%>		 
  									<td>
  									<center><%out.println("<img src='"+p1+"' class='img-rounded' height='50px' width='50px'/>"); %>
  									</center>
  									</td>
  							<%
  								}
  								else
  								{
  									String p2 = ps.getPhotos();
  								
  							%>
 								<td><center><%out.println("<img onmouseover='bigImg(this)' onmouseout='normalImg(this)' src='"+p2+"' class='img-rounded' height='50px' width='50px'/>"); %>
 								</center></td> 
 																
  							<%
  								}
  							%>
  							
  		  			<td><a href="mm.controller.DeleteAdmin?emailid=<%=ps.getEmailid() %>"><img src="images/7012.png" height="20" width="50"></a></td>
  			<%
  				}
  			%>
  						
  		</tbody>
  </table>
  </center>
<script>
function bigImg(x) {
    x.style.height = "150px";
    x.style.width = "150px";
}

function normalImg(x) {
    x.style.height = "50px";
    x.style.width = "50px";
}
</script>
	
</body>
</html>
</div>
</div>
</div>
