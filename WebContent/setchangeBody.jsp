<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="grid_3">
  <div class="container">
    
    <div class="breadcrumb1">
   <center>
    <font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
		<%
			if(session.getAttribute("email") == null)
				response.sendRedirect("login.jsp");
		%>
    
   
		</center>
		<ul">
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">SET YOUR NEW PASSWORD</li>
     </ul>
    </div>
    <div class="services">
   	  <div class="col-sm-6 login_right">
    
    
    <form action="mm.controller.ChangePassword" method="post">
  	    
    <div class="form-item form-type-password form-item-pass">
	      <label for="edit-pass">Old Password <span class="form-required" title="This field is required.">*</span></label>
	      <input type="password" id="edit-pass" name="opass" size="60" maxlength="128" class="form-text required">
	    </div>
    
    
    <div class="form-item form-type-password form-item-pass">
	      <label for="edit-pass">New Password <span class="form-required" title="This field is required.">*</span></label>
	      <input type="password" id="edit-pass" name="npass" size="60" maxlength="128" class="form-text required">
	    </div>
	    
    <div class="form-item form-type-password form-item-pass">
	      <label for="edit-pass">Confirm Password <span class="form-required" title="This field is required.">*</span></label>
	      <input type="password" id="edit-pass" name="cpass" size="60" maxlength="128" class="form-text required">
	    </div>
	    <div class="form-actions">
	    	<input type="submit" id="edit-submit" value="change password" class="btn_1 submit" onsubmit="checkMsg();">
	    </div>
	    
	    </form>
	    </div>
	    </div>
	      </div>
	    </div>