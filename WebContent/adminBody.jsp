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
   <div style="background-color:yellow; height: 400px;width: 900px;position:absolute;top:110px;right:38%;">
   
   <img src="images/7014.jpg" height="400px" width="900px">
   </div>
    <div style="background-color:yellow; height: 300px;width: 300px;position:absolute; top:219px; right:18%;">
   
   <img src="images/7015.png" height="300px" width="300px">
   </div>
				
     
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_right">
	   <form action="mm.controller.AdminLogin" method="post">
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
	   	<br>
	   	<br>
	   	<br>
	   	<br>  
	  </div>

	  
	  <div class="clearfix"> </div>
   </div>
  </div>
</div>
    