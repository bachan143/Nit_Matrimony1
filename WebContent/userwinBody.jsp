<%@page import="mm.db.Users"%>
  

 <%@page import="mm.model.UsersDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>



.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbarprofile a:hover, .dropdownprofile:hover .dropbtnprofile {
    background-color: #f1b500;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: ;
}

.dropdownprofile:hover .dropdown-content {
    display: block;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 8px 52px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 26px;
    margin: 2px 2px;
    cursor: pointer;
}
.photo {
    background-color:#c32143 ;
    border: none;
    color: white;
    padding: 8px 52px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 26px;
    margin: 2px 2px;
    cursor: pointer;
}

</style>





 <div style="background-color:white">
 <br>
	
	<div class="breadcrumb1">
			 <%
       			Users u1 = new Users();
       			u1.setEmailid((String)session.getAttribute("emailid"));
      
        		String p1 = UsersDao.getPhotoPath(u1);
        		System.out.println (p1);
         		String p2 = "profileimg/profile-default.jpg";
        
       		%>
       		
       		 <%
            	String emailid = (String)session.getAttribute("emailid");
		    	Users users = new Users();
     	    	users.setEmailid(emailid);
           		Users u=UsersDao.getDetails(users);

            	String name=u.getName();
            	String age=u.getAge();
            	String employed_in=u.getEmployed_in();
          	
                
          		%>
	
	
	<table border="0" cellspacing="" width="100%" height="60%">

		<tr>
 			<th width="200px" height="100px">
 			
 		<center>
        <a href="#" class="button">Latest updates</a>
 		 </center>
 			
 			</th>
 			<th rowspan="2" width="400px" height="200px">
 			
 			 	<center>	<img alt="" src="images/matches.jpg" height="190px" width="390px"> </center>		
 			</th>
 			<td rowspan="3" width="200px" height="300px">
 			 			
 			<center>
 	       <%
         if(p1 != null)
         {
        	 System.out.println("+++AAAAAAAAAAAAAAA"+p1);
        	out.println("<img src='"+p1+"' class='img-rounded' height='200px' width='150px'/>");
         }
               
         else
         {
        	 System.out.println("+++BBBBBBBBBBBBBB");
        	out.println("<img src='"+p2+"' class='img-rounded' height='200px' width='150px'/>");
         }
       
       	%>
       	
          <div style="  height: 90px; width: 200px; overflow: hidden; margin-top:5px; " >
								<p style="color: black; font-size: 15px; font-weight: bold; padding-top: 2px; padding-left: 2px;" >
									Name :	<%=u.getName() %>
									<br>
									Age  :  <%=u.getAge() %>
									<br>
  									Employed In :  <%=u.getEmployed_in() %><br>
 			</center>
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			
 			</td>
 			<td rowspan="2" colspan="2"height="200px" width="520px">
 			<button>1 million matches& counting</button>      
 			<img alt="" src="images/millionsmore.jpg" height="130px" width="480px"> </center>
 			<button></button>      
 			</td>
			
			</tr>
 
 		<tr>
 				<th height="100px" width="200px">
 				
 					<center>
        <a href="photo.jsp" class="photo">Change photo</a>
 		 </center>
 			 
 				
 				
 				</th>
 		</tr>
 
 
 
 		<tr>
 		
 			<td rowspan="3" colspan="2" width="600px" height="300px">
 			<button>give your preferences</button> 
 			
 			<center>	<img alt="" src="images/PREFERENCES2.jpg" height="250px" width="610px"> </center>
 			
 			</td>
 			<td height="100px" width="200px">
 			
 		<center>
        <a href="#" class="button">Sort listed</a>
 		 </center>
 		
 			
 			
 			</td>
 			
 			<td rowspan="2"height="200px" width="310px">
 			
 			<center>	<img alt="" src="images/MESSAGES.jpg" height="190px" width="300px"> </center>
 			</td>
 		</tr>
 
		<tr> 
     		<td rowspan="2" colspan="2" height="200px" width="400px">
<button>our 150+ Branches</button>     		
     			<img alt="" src="images/office.jpg" height="150px" width="420px"> 
     		</td>
	 
		</tr>	 
		
		
		<tr>
			<td height="100px" width="310px">
			
		<center>	<img alt="" src="images/search.jpg" height="100px" width="310px"> </center></td>     
			
			</td>
		</tr>
      
 
 
 		</table>
	<!--  <br>
	<br>
	<br>
	<div class="breadcrumb1">
<div>

  <img alt="" src="images/4.jpg" height="142" width="221">
  <img alt="" src="images/50.jpg" height="142" width="221">
  <img alt="" src="images/60.jpg" height="142" width="221">
  <img alt="" src="images/70.jpg" height="142" width="221">
  <img alt="" src="images/80.jpg" height="142" width="221">
  <img alt="" src="images/90.jpg" height="142" width="221">
  


</div>
	  											
  	-->										
  							
 			
  		
  						
  						
  											</div>
  											</div>
							
							
							
       