
<%@page import="mm.db.ChatUsers"%>
<%@page import="mm.model.MatrimonyInterestDao"%>
<%@page import="mm.model.MatrimonyMailDao"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>

<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>
<head>
<title>Marital an Wedding Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
</head>
<body>
<!-- ============================  Navigation Start =========================== -->
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
					<a href="#" class="icon-home"></a>
					<ul>
						<li><a href="login.jsp">Login</a></li>
					     
					    <li><a href="mm.controller.Logout">Logout</a></li>
					</ul>
				</li>
			   </ul>
             </nav>
           </div>
           <a class="brand" href="index.jsp"><h2 style="color: white">Matrimony</h2></a>
                                                                  
            <%-- <font color="white"><%=session.getAttribute("emailid") %></font>  --%>
                     <!--  <div class="pull-right margin-top:-50px;"> -->
                      	
         <div class="pull-right" align="right">	
						
		 <%
		    Users u1=new Users();
	   	   u1.setEmailid((String)session.getAttribute("emailid"));
	   	   
	   			Users u=UsersDao.getDetails(u1);

    				String name=u.getName();
    				
	   	   System.out.println("--------------------------------------"+name);
	   	  
	   	  
	   	   %>
	   	  <h4 style="color:white;"> Hello:</tr><br> <%
					String emailid = (String)session.getAttribute("emailid"); 
				int n_inbox = MatrimonyMailDao.getRowsInbox(emailid);
				int n_outbox = MatrimonyMailDao.getRowsOutbox(emailid);
				 int i = MatrimonyInterestDao.getRowsInbox(emailid);
				%>
				<%=emailid %></h4>
				
			</div>
                      	
                      	
                      	
           
           <div class="pull-right">
           
          	<nav class="navbar nav_bottom" role="navigation">
          	
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      
		      <a class="navbar-brand" href="#"></a>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		 
           
		           
		           <li><a href="userWindow.jsp">Home</a></li>
		          <li class="dropdown">
		           <a href="#" class="dropdown-toggle" data-toggle="dropdown">My profile<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		            
		                 
		                <li><a href="fullProfile.jsp">view full profile</a></li>
		                <li><a href="editProfile.jsp">EditProfile</a></li>
		                <li><a href="updatePhoto.jsp">update photo</a></li>
		           
		          
		                
		              </ul>
		            </li>
		           
		           <li><a href="interest.jsp">Intrested&nbsp;&nbsp;<%=i%></a></li>
		            
		            
		    		<li><a href="matches.jsp?page=1">Matches</a></li>
					<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		            
		                 
		                <li><a href="searchByName.jsp">Search By Profile Name</a></li>
		                <li><a href="searchByAge.jsp">Search By Age</a></li>
		                <li><a href="searchByLocation.jsp">Search By Location</a></li>
		                <li><a href="searchByCustom.jsp">Custom Searchs</a></li>
		              </ul>
		            </li>
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="inbox.jsp">Inbox&nbsp;&nbsp;<%=n_inbox%></a></li>
		                <li><a href="sent.jsp">Sent&nbsp;&nbsp;<%=n_outbox%></a></li>
		              </ul>
		            </li>
		            <li class="last"><a href="contact.jsp">Contacts</a></li>
		            <li><a href="about.jsp">About</a></li>
		            <li><a href="chatUsers.jsp?name=<%=name %>">Chat</a></li>
		             <li class="last"><a href="mm.controller.Logout" method="get">Logout</a></li>
		             
		           
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->
 