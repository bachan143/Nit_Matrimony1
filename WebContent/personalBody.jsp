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
        <li class="current-page">Family Information</li>
     </ul>
   </div>
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="moreReligion.jsp">
				   <input type="button" value="I'll do this later >" ></input>
				   </a>
     
           <form action="mm.controller.Personal" method="post">
		<div class="form-group">
		      <label for="edit-name">Family status <span class="form-required" title="This field is required.">*</span></label>
		      
		     &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" id="edit-name" name="family_status" value="Middle_Class" >&nbspMiddle Class&nbsp
		      <input type="radio" id="edit-name" name="family_status" value="Upper_Middle_Class" >&nbspUpper Middle Class&nbsp
		      <input type="radio" id="edit-name" name="family_status" value="Rich" >&nbspRich&nbsp
		      <input type="radio" id="edit-name" name="family_status" value="Affluent" >&nbspAffluent
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Family Type <span class="form-required" title="This field is required.">*</span></label>
		      
		       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" id="edit-name" name="family_type" value="Middle_Class" >&nbspJoint Family&nbsp
		      <input type="radio" id="edit-name" name="family_type" value="Upper_Middle_Class" >&nbsp Nuclear Family &nbsp
		      <input type="radio" id="edit-name" name="family_type" value="Rich" >&nbspOthers&nbsp
		    
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Family Values <span class="form-required" title="This field is required.">*</span></label>
		     
		     &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" id="edit-name" name="family_values" value="Middle_Class" >&nbspOthodox&nbsp
		      <input type="radio" id="edit-name" name="family_values" value="Upper_Middle_Class" >&nbspTraditional&nbsp
		      <input type="radio" id="edit-name" name="family_values" value="Rich" >&nbspModerate&nbsp
		      <input type="radio" id="edit-name" name="family_values" value="Affluent" >&nbspLiberal
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Father Status <span class="form-required" title="This field is required.">*</span></label>
		      <div class="select-block1">
		      <select name="father_status" style="width: 500px">		
		      			<option value="">--Select Status--</option>
		      			<option value="">Employed</option>
		      			<option value="">Businessman</option>
		      			<option value="">Professional</option>
		      			<option value="">Retired</option>
		      			<option value="">Not Employed</option>
		      			<option value="">Passed Away</option>
		      			</select>
		      			</div>
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Mother Status <span class="form-required" title="This field is required.">*</span></label>
		      <div class="select-block1">
		      <select name="mother_status" style="width: 500px">		
		      			<option value="">--Select Status--</option>
		      			<option value="">Homemaker</option>
		      			<option value="">Employed</option>
		      			<option value="">Business Women</option>
		      			<option value="">Professional</option>
		      			<option value="">Retired</option>
		      			<option value="">Passed Away</option>
		      			</select>
		    </div>
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Brothers <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" style="width: 500px" name="brothers" value="" size="60" maxlength="60" class="form-text required" placeholder="No of Brothers" required="required">
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Sisters <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" style="width: 500px" name="sisters" value="" size="60" maxlength="60" class="form-text required" placeholder="No of Sisters" required="required">
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Favourite Cousion <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" style="width: 500px" name="favourite_cousion" value="" size="60" maxlength="60" class="form-text required" placeholder="Fovourite cousion" required="required">
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Family Location <span class="form-required" title="This field is required.">*</span></label>
		      <br><textarea id="edit-name" name="family_location" style="width: 500px;  height: 100px " >	</textarea> <br>
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Parrent's Contact No <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" style="width: 500px;" name="phone" value="" placeholder="Contact No" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
		    
		    <div class="form-group">
		      <label for="edit-name">Ancestral Origin <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" style="width: 500px" placeholder="Origin" name="ancestral_origin" value="" size="60" maxlength="60" class="form-text required" required="required">
		    </div>
			
			<div class="form-actions">
			                <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit">
			                </div>				
		
	</form>
           
</div>

</div>








      </body>
</html>