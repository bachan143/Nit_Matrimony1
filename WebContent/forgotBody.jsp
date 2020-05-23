<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
 
  
   
         <ul">
       		<%
			if(request.getParameter("msg") != null)
			out.print(request.getParameter("msg"));
		%>
        FORGOT PASSWORD    
        <li class="current-page"><b>Enter your email address used in the online registration form at Matrimony.com. Password sent to you may take up to 30  minutes to reach your mailbox. Make sure you type the correct email address.</b></li>
     </ul>
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_right">
	   <form action="mm.controller.ForgotPassword" method="post">
  	    <div class="form-item form-type-textfield form-item-name">
	      <label for="edit-name">Email Id <span class="form-required" title="This field is required.">*</span></label>
	      <input type="email" id="edit-name" name="emailid"   size="60" maxlength="60" class="form-text required">
	    </div>
	    
	    <div class="form-actions">
	    	<input type="submit" id="edit-submit" value="Forgot Password" class="btn_1 submit" onsubmit="checkMsg();">
	    </div>
	    
	   </form><br><br>
	  

	  
	  </div>

	  
	  <div class="clearfix"> </div>
   </div>
  </div>
</div>
    