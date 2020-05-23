<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
   <center>
  <font color="red">
  <font size="5">
   <%
          if(request.getParameter("msg")!=null)
        	  out.print(request.getParameter("msg"));
   
   %>
   </font>
   </font>
  </center>
   
     <ul">
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Login First To Get Matches..</li>
     </ul>
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_right">
	   <form action="mm.controller.Login" method="post">
  	    <div class="form-item form-type-textfield form-item-name">
	      <label for="edit-name">Email Id <span class="form-required" title="This field is required.">*</span></label>
	      <input type="email" id="edit-name" name="emailid" value=""  size="60" maxlength="60" class="form-text required">
	    </div>
	    <div class="form-item form-type-password form-item-pass">
	      <label for="edit-pass">Password <span class="form-required" title="This field is required.">*</span></label>
	      <input type="password" id="edit-pass" name="password" size="60" maxlength="128" class="form-text required">
	    </div>
	    <div class="form-actions">
	    	<input type="submit" id="edit-submit" value="Login" class="btn_1 submit" onsubmit="checkMsg();">
	    </div>
	    
	   </form><br><br>
	   <a href="forgotPassword.jsp"  ><font color='#c32143' ><b>Forgot Password..</b></font></a>
	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  
	   <a href="register.jsp"  ><font color='#c32143'>New to Matrimony.com? <b>Register Here</b></font></a>
	  
	   <a href="setPassword.jsp"  ><font color='#c32143'>U can set your new password <b>Change Password</b></font></a>
	  </div>

	  
	  <div class="clearfix"> </div>
   </div>
  </div>
</div>
    