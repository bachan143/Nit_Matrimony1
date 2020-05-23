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
     
     <br>
      <ul>
        <i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page"><h3>Life Style Info</h3></li>
     </ul>
   </div>
     <div class="services">
   	  <div class="col-sm-6 login_left">
           <form action="mm.controller.Others" method="post">
		
		
				<div class="form-group">
		      <label for="edit-name">Eating Habit <span class="form-required" title="This field is required.">*</span></label>&nbsp&nbsp
&nbsp		      <input type="checkbox"  name="eating_habit" value="vegetarian"   >&nbspVegetarian
		      <input type="checkbox"  name="eating_habit" value="non-vegetarian"   >&nbspNon-Vegetarian
		      <input type="checkbox"  name="eating_habit" value="eggetarian" >&nbspEggetarian
		    </div>
			
				<div class="form-group">
		      <label for="edit-name">Drinking Habit <span class="form-required" title="This field is required.">*</span></label>&nbsp&nbsp&nbsp
		      <input type="checkbox"  name="drinking_habit" value="no" >&nbspNo
		      <input type="checkbox"  name="drinking_habit" value="drinks_socially" >&nbspDrinks Socially
		      <input type="checkbox"  name="drinking_habit" value="yes" >&nbspYes
		    </div>
		    
		    	<div class="form-group">
		      <label for="edit-name">Smoking Habit <span class="form-required" title="This field is required.">*</span></label>&nbsp&nbsp&nbsp
		      
		      <input type="checkbox"  name="smoking_habit" value="no" >&nbspNo
		      <input type="checkbox"  name="smoking_habit" value="occasionally" >&nbspOccasionally
		      <input type="checkbox"  name="smoking_habit" value="yes" >&nbspYes
		    </div>
						                
						                <div class="form-actions">
			                <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit">
			                </div>				
		
	</form>
      </div>
      
       <a href="personalInfo.jsp">
				   <input type="button" value="I'll do this later >"></input>
				   </a>
      </div>
    </div>
    </div>

</body>

 </html>