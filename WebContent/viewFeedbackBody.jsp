
<%@page import="java.util.Iterator"%>
<%@page import="mm.model.FeedbackDao"%>
<%@page import="mm.db.Feedback"%>
<%@page import="java.util.ArrayList"%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
    
   

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
	

<h1>Matrimony Users</h1>
<br>
<br>

<table id = "accordion">
  		<thead>
  			<tr>
  				<th style="min-width:280px;">Email</th>
  				
  				<th style="min-width:180px;">Name</th>
  				<th style="min-width:180px;">Subject</th>
  				<th style="min-width:400px;">Feedback</th>
  		
  		         
  			</tr>
  		</thead>
  		<tbody>
  			<%
  				
  				ArrayList<Feedback> all = FeedbackDao.fetch();
  				Iterator<Feedback> it = all.iterator();
  				while(it.hasNext()){
  					Feedback ts = it.next();
  					%>
  						<tr>
  							<td><%=ts.getEmailid() %></td>
  						   <td> <%=ts.getName() %></td>
  						   <td> <%=ts.getSubject() %></td>
  						  <td> <%=ts.getFeedback() %>
  						  
  						   
  						   
  					<%
  				}
  					%>		

  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   
  						   						
  							
  							
  		  			
  		  						
  		</tbody>
  </table>

	
</body>
</html>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   </div>
   </div>
   </div>