
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
 
<%@page import="mm.model.HoroscopeDao"%>
<%@page import="mm.db.Horoscope"%>
<%@page import="mm.model.FamilyDao"%>
<%@page import="mm.db.Family"%>
<%@page import="mm.db.Match"%>
<%@page import="mm.model.MatchDao"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>


<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">

<div class="wrapper row3">
 <div style="background-color:white">
 <div class="buttons">
				   <div class="vertical"><a href="editProfile.jsp">Update Profile</a></div>
				   <div class="vertical"><a href="editFamily.jsp">Update Family&Info</a></div>
				   <div class="vertical"><a href="editHoroscope.jsp">Horoscope Details Update</div>
				   <div class="vertical"><a href="editActivities.jsp">Update Other Activities</a></div>
				   
			   </div>
 <br>
 <br>
 <div style="background-color:yellow; height: 200px;width: 200px;position:absolute;top:200px;right:20%;">
				
			 <%
       	Users u1 = new Users();
       	u1.setEmailid((String)session.getAttribute("emailid"));
      
        String p1 = UsersDao.getPhotoPath(u1);
        System.out.println (p1);
        System.out.println("------****");
        String p2 = "profileimg/profile-default.jpg";
        
       %>
       <%
         if(p1 != null)
         {
        	 System.out.println("-------------------+++++++++++++");
        	 out.println("<img src='"+p1+"' class='img-rounded' height='300px'/>");
         }
               
         else
         	{
        	 	System.out.println("-------------------+++++++++++++========");
        	 
        		out.println("<img src='"+p2+"' class='img-rounded' height='300px'/>");
         	}
       
       %>
       <center>
		<div class="vertical"><a href="updatePhoto.jsp">Update  Photo</a></div>
		</center>	
	</div>               
 
	
<%
 	String emailid = (String)session.getAttribute("emailid");
	  	Users users = new Users();
	  	users.setEmailid(emailid);
	  	Users u=UsersDao.getDetails(users);
	  	String name=u.getName();
	  	String age=u.getAge();
	  	String employed_in=u.getEmployed_in();
	  	
	  	
	    String gender=u.getGender();
	 	String date_of_birth=u.getDate_of_birth();
	  	String religion=u.getReligion();
	  	String mother_tounge=u.getMother_tounge();
	  	
	  	String country=u.getCountry();
		String body=u.getBody();
		String height=u.getHeight();
		String weight=u.getWeight();
		
		
		String address=u.getAbout_me();
		String occupation=u.getOccupation();
		String salary=u.getSalary();
		String income=u.getIncome();
		
		String disability=u.getDisability();
		String about_me=u.getAbout_me();
		String highest_education=u.getHighest_education();
		String martial_status=u.getMartial_status();


		

	%>
	<form action="mm.controller.UpdateProfile" method="post" id="lform" >
		<div class="services">
   	  <div class="col-sm-6 login_left">   
	  	    <div class="form-group">
		      <label for="edit-name">Name <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="name" value="<%=u.getName() %>" class="form-text required" >
		    </div>
		    
                </div>
                  <div class="clearfix"> </div>
                 </div>
                
                
                          
                  <div class="clearfix"> </div>
                 </div>
              </div>
               
              <div class="age_select">
		      <label for="edit-pass">Religion<span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="religion" required>
                        <option value=""><%=u.getReligion() %></option>
	                    <option value="Hindu">Hindu</option>
	                    <option value="Sikh">Sikh</option>
	                    
	                    <option value="Christian">Christian</option>
	                    <option value="Jain">Jain</option>
	                    <option value="Buddhist">Buddhist</option>

                    </select>
                  </div>
                 </div>
                 </div>
                   <div class="clearfix"> </div>
                 </div>
                  <div class="age_select">
		      <label for="edit-pass">Mother Tongue<span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="mother_tounge" required>
                        <option value=""><%=u.getMother_tounge() %></option>
	                    <option value="Odia">Odia</option>
	                    <option value="Hindi">Hindi</option>
	                    <option value="English">English</option>
	                    <option value="Tamil">Tamil</option>
	                    <option value="Telugu">Telugu</option>
	                    <option value="Bengali">Bengali</option>
	                    <option value="Marathi">Marathi</option>
	                    <option value="Urdu">Urdu</option>
	                    <option value="Gujurati">Gujurati</option>
	                    <option value="Punjabi">Punjabi</option>
	 
                    </select>
                  </div>
                 </div>
                 </div>
                 <div class="clearfix"> </div>
                 </div>
                 
                

       
                  
                      <div class="country_select">
		      <label for="edit-pass">Country<span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="country" required>
                        <option value="<%=u.getCountry() %>"><%=u.getCountry() %></option>
	                   <option value="Afghanistan">Afghanistan</option>
    <option value="Albania">Albania</option>
    <option value="Algeria">Algeria</option>
    <option value="American Samoa">American Samoa</option>
    <option value="Andorra">Andorra</option>
    <option value="Angola">Angola</option>
    <option value="Anguilla">Anguilla</option>
    <option value="Antartica">Antarctica</option>
    <option value="Antigua and Barbuda">Antigua and Barbuda</option>
    <option value="Argentina">Argentina</option>
    <option value="Armenia">Armenia</option>
    <option value="Aruba">Aruba</option>
    <option value="Australia">Australia</option>
    <option value="Austria">Austria</option>
    <option value="Azerbaijan">Azerbaijan</option>
    <option value="Bahamas">Bahamas</option>
    <option value="Bahrain">Bahrain</option>
    <option value="Bangladesh">Bangladesh</option>
    <option value="Barbados">Barbados</option>
    <option value="Belarus">Belarus</option>
    <option value="Belgium">Belgium</option>
    <option value="Belize">Belize</option>
    <option value="Benin">Benin</option>
    <option value="Bermuda">Bermuda</option>
    <option value="Bhutan">Bhutan</option>
    <option value="Bolivia">Bolivia</option>
    <option value="Bosnia and Herzegowina">Bosnia and Herzegowina</option>
    <option value="Botswana">Botswana</option>
    <option value="Bouvet Island">Bouvet Island</option>
    <option value="Brazil">Brazil</option>
    <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
    <option value="Brunei Darussalam">Brunei Darussalam</option>
    <option value="Bulgaria">Bulgaria</option>
    <option value="Burkina Faso">Burkina Faso</option>
    <option value="Burundi">Burundi</option>
    <option value="Cambodia">Cambodia</option>
    <option value="Cameroon">Cameroon</option>
    <option value="Canada">Canada</option>
    <option value="Cape Verde">Cape Verde</option>
    <option value="Cayman Islands">Cayman Islands</option>
    <option value="Central African Republic">Central African Republic</option>
    <option value="Chad">Chad</option>
    <option value="Chile">Chile</option>
    <option value="China">China</option>
    <option value="Christmas Island">Christmas Island</option>
    <option value="Cocos Islands">Cocos (Keeling) Islands</option>
    <option value="Colombia">Colombia</option>
    <option value="Comoros">Comoros</option>
    <option value="Congo">Congo</option>
    <option value="Congo">Congo, the Democratic Republic of the</option>
    <option value="Cook Islands">Cook Islands</option>
    <option value="Costa Rica">Costa Rica</option>
    <option value="Cota D'Ivoire">Cote d'Ivoire</option>
    <option value="Croatia">Croatia (Hrvatska)</option>
    <option value="Cuba">Cuba</option>
    <option value="Cyprus">Cyprus</option>
    <option value="Czech Republic">Czech Republic</option>
    <option value="Denmark">Denmark</option>
    <option value="Djibouti">Djibouti</option>
    <option value="Dominica">Dominica</option>
    <option value="Dominican Republic">Dominican Republic</option>
    <option value="East Timor">East Timor</option>
    <option value="Ecuador">Ecuador</option>
    <option value="Egypt">Egypt</option>
    <option value="El Salvador">El Salvador</option>
    <option value="Equatorial Guinea">Equatorial Guinea</option>
    <option value="Eritrea">Eritrea</option>
    <option value="Estonia">Estonia</option>
    <option value="Ethiopia">Ethiopia</option>
    <option value="Falkland Islands">Falkland Islands (Malvinas)</option>
    <option value="Faroe Islands">Faroe Islands</option>
    <option value="Fiji">Fiji</option>
    <option value="Finland">Finland</option>
    <option value="France">France</option>
    <option value="France Metropolitan">France, Metropolitan</option>
    <option value="French Guiana">French Guiana</option>
    <option value="French Polynesia">French Polynesia</option>
    <option value="French Southern Territories">French Southern Territories</option>
    <option value="Gabon">Gabon</option>
    <option value="Gambia">Gambia</option>
    <option value="Georgia">Georgia</option>
    <option value="Germany">Germany</option>
    <option value="Ghana">Ghana</option>
    <option value="Gibraltar">Gibraltar</option>
    <option value="Greece">Greece</option>
    <option value="Greenland">Greenland</option>
    <option value="Grenada">Grenada</option>
    <option value="Guadeloupe">Guadeloupe</option>
    <option value="Guam">Guam</option>
    <option value="Guatemala">Guatemala</option>
    <option value="Guinea">Guinea</option>
    <option value="Guinea-Bissau">Guinea-Bissau</option>
    <option value="Guyana">Guyana</option>
    <option value="Haiti">Haiti</option>
    <option value="Heard and McDonald Islands">Heard and Mc Donald Islands</option>
    <option value="Holy See">Holy See (Vatican City State)</option>
    <option value="Honduras">Honduras</option>
    <option value="Hong Kong">Hong Kong</option>
    <option value="Hungary">Hungary</option>
    <option value="Iceland">Iceland</option>
    <option value="India">India</option>
    <option value="Indonesia">Indonesia</option>
    <option value="Iran">Iran (Islamic Republic of)</option>
    <option value="Iraq">Iraq</option>
    <option value="Ireland">Ireland</option>
    <option value="Israel">Israel</option>
    <option value="Italy">Italy</option>
    <option value="Jamaica">Jamaica</option>
    <option value="Japan">Japan</option>
    <option value="Jordan">Jordan</option>
    <option value="Kazakhstan">Kazakhstan</option>
    <option value="Kenya">Kenya</option>
    <option value="Kiribati">Kiribati</option>
    <option value="Democratic People's Republic of Korea">Korea, Democratic People's Republic of</option>
    <option value="Korea">Korea, Republic of</option>
    <option value="Kuwait">Kuwait</option>
    <option value="Kyrgyzstan">Kyrgyzstan</option>
    <option value="Lao">Lao People's Democratic Republic</option>
    <option value="Latvia">Latvia</option>
    <option value="Lebanon" >Lebanon</option>
    <option value="Lesotho">Lesotho</option>
    <option value="Liberia">Liberia</option>
    <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
    <option value="Liechtenstein">Liechtenstein</option>
    <option value="Lithuania">Lithuania</option>
    <option value="Luxembourg">Luxembourg</option>
    <option value="Macau">Macau</option>
    <option value="Macedonia">Macedonia, The Former Yugoslav Republic of</option>
    <option value="Madagascar">Madagascar</option>
    <option value="Malawi">Malawi</option>
    <option value="Malaysia">Malaysia</option>
    <option value="Maldives">Maldives</option>
    <option value="Mali">Mali</option>
    <option value="Malta">Malta</option>
    <option value="Marshall Islands">Marshall Islands</option>
    <option value="Martinique">Martinique</option>
    <option value="Mauritania">Mauritania</option>
    <option value="Mauritius">Mauritius</option>
    <option value="Mayotte">Mayotte</option>
    <option value="Mexico">Mexico</option>
    <option value="Micronesia">Micronesia, Federated States of</option>
    <option value="Moldova">Moldova, Republic of</option>
    <option value="Monaco">Monaco</option>
    <option value="Mongolia">Mongolia</option>
    <option value="Montserrat">Montserrat</option>
    <option value="Morocco">Morocco</option>
    <option value="Mozambique">Mozambique</option>
    <option value="Myanmar">Myanmar</option>
    <option value="Namibia">Namibia</option>
    <option value="Nauru">Nauru</option>
    <option value="Nepal">Nepal</option>
    <option value="Netherlands">Netherlands</option>
    <option value="Netherlands Antilles">Netherlands Antilles</option>
    <option value="New Caledonia">New Caledonia</option>
    <option value="New Zealand">New Zealand</option>
    <option value="Nicaragua">Nicaragua</option>
    <option value="Niger">Niger</option>
    <option value="Nigeria">Nigeria</option>
    <option value="Niue">Niue</option>
    <option value="Norfolk Island">Norfolk Island</option>
    <option value="Northern Mariana Islands">Northern Mariana Islands</option>
    <option value="Norway">Norway</option>
    <option value="Oman">Oman</option>
    <option value="Pakistan">Pakistan</option>
    <option value="Palau">Palau</option>
    <option value="Panama">Panama</option>
    <option value="Papua New Guinea">Papua New Guinea</option>
    <option value="Paraguay">Paraguay</option>
    <option value="Peru">Peru</option>
    <option value="Philippines">Philippines</option>
    <option value="Pitcairn">Pitcairn</option>
    <option value="Poland">Poland</option>
    <option value="Portugal">Portugal</option>
    <option value="Puerto Rico">Puerto Rico</option>
    <option value="Qatar">Qatar</option>
    <option value="Reunion">Reunion</option>
    <option value="Romania">Romania</option>
    <option value="Russia">Russian Federation</option>
    <option value="Rwanda">Rwanda</option>
    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option> 
    <option value="Saint LUCIA">Saint LUCIA</option>
    <option value="Saint Vincent">Saint Vincent and the Grenadines</option>
    <option value="Samoa">Samoa</option>
    <option value="San Marino">San Marino</option>
    <option value="Sao Tome and Principe">Sao Tome and Principe</option> 
    <option value="Saudi Arabia">Saudi Arabia</option>
    <option value="Senegal">Senegal</option>
    <option value="Seychelles">Seychelles</option>
    <option value="Sierra">Sierra Leone</option>
    <option value="Singapore">Singapore</option>
    <option value="Slovakia">Slovakia (Slovak Republic)</option>
    <option value="Slovenia">Slovenia</option>
    <option value="Solomon Islands">Solomon Islands</option>
    <option value="Somalia">Somalia</option>
    <option value="South Africa">South Africa</option>
    <option value="South Georgia">South Georgia and the South Sandwich Islands</option>
    <option value="Span">Spain</option>
    <option value="SriLanka">Sri Lanka</option>
    <option value="St. Helena">St. Helena</option>
    <option value="St. Pierre and Miguelon">St. Pierre and Miquelon</option>
    <option value="Sudan">Sudan</option>
    <option value="Suriname">Suriname</option>
    <option value="Svalbard">Svalbard and Jan Mayen Islands</option>
    <option value="Swaziland">Swaziland</option>
    <option value="Sweden">Sweden</option>
    <option value="Switzerland">Switzerland</option>
    <option value="Syria">Syrian Arab Republic</option>
    <option value="Taiwan">Taiwan, Province of China</option>
    <option value="Tajikistan">Tajikistan</option>
    <option value="Tanzania">Tanzania, United Republic of</option>
    <option value="Thailand">Thailand</option>
    <option value="Togo">Togo</option>
    <option value="Tokelau">Tokelau</option>
    <option value="Tonga">Tonga</option>
    <option value="Trinidad and Tobago">Trinidad and Tobago</option>
    <option value="Tunisia">Tunisia</option>
    <option value="Turkey">Turkey</option>
    <option value="Turkmenistan">Turkmenistan</option>
    <option value="Turks and Caicos">Turks and Caicos Islands</option>
    <option value="Tuvalu">Tuvalu</option>
    <option value="Uganda">Uganda</option>
    <option value="Ukraine">Ukraine</option>
    <option value="United Arab Emirates">United Arab Emirates</option>
    <option value="United Kingdom">United Kingdom</option>
    <option value="United States">United States</option>
    <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
    <option value="Uruguay">Uruguay</option>
    <option value="Uzbekistan">Uzbekistan</option>
    <option value="Vanuatu">Vanuatu</option>
    <option value="Venezuela">Venezuela</option>
    <option value="Vietnam">Viet Nam</option>
    <option value="Virgin Islands (British)">Virgin Islands (British)</option>
    <option value="Virgin Islands (U.S)">Virgin Islands (U.S.)</option>
    <option value="Wallis and Futana Islands">Wallis and Futuna Islands</option>
    <option value="Western Sahara">Western Sahara</option>
    <option value="Yemen">Yemen</option>
    <option value="Yugoslavia">Yugoslavia</option>
    <option value="Zambia">Zambia</option>
    <option value="Zimbabwe">Zimbabwe</option>   
                    </select>
                  </div>
                 </div>
                 </div>
                  </div>
                  <br>
                  <br>
                
                
     


	  
	  
		        
                
		    <div class="form-group">
		      <label for="edit-name">Age <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="age" value="<%=u.getAge() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Employed in<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="employed_in" value="<%=u.getEmployed_in() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		     <div class="form-group">
		      <label for="edit-name">Body <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="body" value="<%=u.getBody() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Height<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="height" value="<%=u.getHeight()%>" size="60" maxlength="60" class="form-text required">
		    </div>
		     <div class="form-group">
		      <label for="edit-name">Weight <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="weight" value="<%=u.getWeight()%>" size="60" maxlength="60" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Address<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="address" value="<%=u.getAddress()%>" size="60" maxlength="60" class="form-text required">
		    </div>
		     <div class="form-group">
		      <label for="edit-name">Occupation <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="occupation" value="<%=u.getOccupation() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Salary<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="salary" value="<%=u.getSalary() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		     <div class="form-group">
		      <label for="edit-name">Income <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="income" value="<%=u.getIncome() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Disability<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="disability" value="<%=u.getDisability()%>" size="60" maxlength="60" class="form-text required">
		    </div>
		     <div class="form-group">
		      <label for="edit-name">About_me <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="about_me" value="<%=u.getAbout_me() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-name">Highest Education<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="highest_education" value="<%=u.getHighest_education() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		     <div class="form-group">
		      <label for="edit-name">Martial Status<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="martial_status" value="<%=u.getMartial_status() %>" size="60" maxlength="60" class="form-text required">
		    </div>
		
              
			  
			  <div class="form-actions">
			    <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit">
			  </div>
		 </form>
	  </div>
	  <div class="col-sm-6">
	     <ul class="sharing">
			<li><a href="#" class="facebook" title="Facebook"><i class="fa fa-boxed fa-fw fa-facebook"></i> Share on Facebook</a></li>
		  	<li><a href="#" class="twitter" title="Twitter"><i class="fa fa-boxed fa-fw fa-twitter"></i> Tweet</a></li>
		  	<li><a href="#" class="google" title="Google"><i class="fa fa-boxed fa-fw fa-google-plus"></i> Share on Google+</a></li>
		  	<li><a href="#" class="linkedin" title="Linkedin"><i class="fa fa-boxed fa-fw fa-linkedin"></i> Share on LinkedIn</a></li>
		  	<li><a href="#" class="mail" title="Email"><i class="fa fa-boxed fa-fw fa-envelope-o"></i> E-mail</a></li>
		 </ul>
	   </div>
	
	
	 <!--   <div style="height: 450px;width: 450px; background-color: red; margin: 0 auto; position:50px,150px;">
	  	 
	  
	  </div> -->
	  
	  
	  
	  <div class="clearfix"> </div>
		
	
		
		
		</div>
		</div>
		</div>