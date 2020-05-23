
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
     <body>
     <div class="grid_3">
     <div class="container">
     <div class="breadcrumb1">
     <ul>
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Page no 8</li>
     </ul>
   </div>
     <div class="services">
   	  <div class="col-sm-6 login_left">
           <form action="mm.controller.MatchOthers" method="post">
		
		<i><h3>What are your hobbies and interests</h3></i>
		----------------------------------------------------------------
				<div class="form-group">
		      <label for="edit-name">Hobbies <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="hobbies" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
				
			<div class="form-group">
		      <label for="edit-name">Interests <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="interest" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
				
				
		<div class="form-group">
		      <label for="edit-name">Other Interests <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="interest" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
		
				
		<i><h3>Your songs</h3></i>
		-----------------------------------		
			     <div class="form-group">
		      <label for="edit-name">Songs  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="songs" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
			     
	    <i><h3>Movies that u like to watch</h3></i>
	    ----------------------------------------------------------
	    		<div class="form-group">
		      <label for="edit-name">Movies <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="movies" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
		   	     
			     
			     
		<i><h3>Your like sports</h3></i>
		-----------------------------------		
			     <div class="form-group">
		      <label for="edit-name">Sports <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="sports" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
		
		<div class="form-group">
		      <label for="edit-name">Other Fittness Trainning <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="fittness" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
		<i><h3>Your like spoken languages</h3></i>
		-----------------------------------------------------		
			     <div class="form-group">
		      <label for="edit-name">Languages <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="languages" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
			     	         

			
		
			                <div class="form-actions">
			                <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit">
			                </div>				
		
	</form>
      </div>
      <a href="userWindow.jsp">
				   <input type="button" value="I'll do this later >"></input>
				   </a>
      </div>     
</div>
</div>








      </body>
      
</html>