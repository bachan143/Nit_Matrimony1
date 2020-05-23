<%@page import="mm.model.HoroscopeDao"%>
<%@page import="mm.db.Horoscope"%>
<%@page import="mm.model.FamilyDao"%>
<%@page import="mm.db.Family"%>
<%@page import="mm.model.MatchDao"%>
<%@page import="mm.db.Match"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.button2 {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button2 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button2 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button2:hover span {
  padding-right: 25px;
}

.button2:hover span:after {
  opacity: 1;
  right: 0;
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
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
</head>


<body>

     <div class="grid_3">
     <div class="container">
     <div class="breadcrumb1">
<table border="0">
<th width="500px">

<table id="amittable">


<center>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="card">
  <%
       	Users u1 = new Users();
       	u1.setEmailid(request.getParameter("emailid"));
      
        String p1 = UsersDao.getPhotoPath(u1);
        System.out.println (p1);
        System.out.println("------****");
        String p2 = "profileimg/profile-default.jpg";
        
       %>
       <%
         if(p1 != null)
         {
        	 System.out.println("-------------------+++++++++++++");
        	 out.println("<img src='"+p1+"' class='img-rounded' height='300px' width='200px'/>");
         }
               
         else
         	{
        	 	System.out.println("-------------------+++++++++++++========");
        	 
        		out.println("<img src='"+p2+"' class='img-rounded' height='300px' width='200px'/>");
         	}
       
       %>
   <%
    	String emailid = request.getParameter("emailid");
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


		Match view=MatchDao.getDetails(users);
	    
	   
	    String hobbies=view.getAbout_partner();  
		String interest=view.getInterest();		  
		String like_to_do =view.getLike_to_do();
		String prefer_style=view.getPrefer_style();      
	    String songs=view.getSongs();
		String movies=view.getMovies();		      
		String sports=view.getSports();
		String fitness=view.getFitness();		  
		String what_in_partner=view.getWhat_in_partner();   
		String resident_state=view.getResident_state();	  
		String citizenship=view.getCitizenship();      
		String bride_age=view.getBride_age();		  
	    String groom_age=view.getGroom_age();
		String about_partner=view.getAbout_partner();
		String language=view.getLanguage();
		
		Family ff=FamilyDao.getDetails(users);
		
		String family_type=ff.getFamily_type();        
		String family_values=ff.getFamily_values();
		String family_sattus=ff.getFamily_status();
		String father_status=ff.getFather_status(); 		
		String mother_status=ff.getMother_status();       
		String brothers =ff.getBrothers();		    
		String  sisters =ff.getSisters();            
		String family_location =ff.getFamily_location();	
		String favourite_cousion=ff.getFavourite_cousion();    
		String about_family =ff.getAbout_family(); 		
		String phone=ff.getPhone();               
		String education_details=ff.getEducation_details();    
		String occupation_details=ff.getOccupation_details();    
		String eating_habit=ff.getEating_habit();         
		String drinking_habit=ff.getDrinking_habit(); 		
		String smoking_habit=ff.getSmoking_habit();        
		String district =ff.getDistrict();		    
		String state =ff.getState();
		String ancestral_origin=ff.getAncestral_origin(); 
		
		
		Horoscope hh=HoroscopeDao.getDetails(users);
		
		    String caste=hh.getCaste();
			String sub_caste=hh.getSub_caste();
			String rasi =hh.getRasi();
			String star=hh.getStar();
			String marryother_communities=hh.getMarryother_communities(); 
			String manglik=hh.getManglik();          
			String gotra =hh.getGotra();          
			String time_of_birth =hh.getTime_of_birth();    
			String place_of_birth =hh.getPlace_of_birth();
		
		
		
	  	%>

  
  <h1><%=u.getName() %></h1>
  <p class="title">Employ in-<%=u.getEmployed_in() %></p>
  <p>Martial status:<%=u.getMartial_status() %></p>
  <br>
  <a href="http://www.facebook.com"><i class="fa fa-dribbble"></i></a> 
  <a href="#"><i class="fa fa-twitter"></i></a> 
  <a href="#"><i class="fa fa-linkedin"></i></a> 
  <a href="#"><i class="fa fa-facebook"></i></a> 
  <br>
  
        <a href="sendMail.jsp?emailid=<%=emailid %>">  <button class="button2"><span>SEND MAIL </span></button></a>      
     <br>
     <br>    
     <a href="sendMessage.jsp?emailid=<%=emailid %>"> <button class="button2"><span>SEND MESSAGE </span></button>      
        <br>
        <br>  
        <a href="mm.controller.SendInterest?emailid=<%=emailid %>"><button class="button2"><span>SEND INTEREST</span></button>
       <br>
       <br>    
          
            

<tr>

<td height="1000px">

</center>
              
</div>
</td>


</tr>
</table>
</th>
<th width="800px">
<table id="customers">
  <tr>
    <th colspan="2" >Your Info</th>

  </tr>
  <tr>
    <td width="300px" text-align: left;> Age</td>
    <td ><%=u.getAge() %></td>
  </tr>
  <tr>
    <td>Gender</td>
    <td><%=u.getGender() %></td>
  </tr>
  <tr>
    <td>Date of birth</td>
    <td><%=u.getDate_of_birth() %></td>
  </tr>
  <tr>
    <td>Religion</td>
    <td><%=u.getReligion() %></td>
  </tr>
  <tr>
    <td>Mother tongue</td>
    <td> <%=u.getMother_tounge() %></td>
  </tr>
  <tr>
    <td>Country</td>
    <td> <%=u.getCountry() %></td>
  </tr>
  <tr>
    <td>Body</td>
    <td>  <%=u.getBody() %></td>
  </tr>
  <tr>
    <td>Height</td>
    <td> <%=u.getHeight() %></td>
  </tr>
  <tr>
    <td>Weight </td>
    <td><%=u.getWeight() %></td>
  </tr>
  <tr>
    <td>Address</td>
    <td>  <%=u.getAddress() %><br></td>
  </tr>
  <tr>
    <td>Occupation</td>
    <td><%=u.getOccupation() %><br></td>
  </tr>
  <tr>
    <td>Salary</td>
    <td><%=u.getSalary() %></td>
  </tr>
  <tr>
    <td>Income in</td>
    <td>  <%=u.getIncome() %></td>
  </tr>
  <tr>
    <td>About me</td>
    <td> <%=u.getAbout_me() %></td>
  </tr>
  <tr>
    <td>Disability</td>
    <td><%=u.getDisability() %></td>
  </tr>
  <tr>
    <td>Highest Education</td>
    <td>	<%=u.getHighest_education() %></td>
  </tr>
  
  <tr>
    <td>Eating Habit</td>
    <td><%=ff.getEating_habit()%></td>
  </tr>
  <tr>
    <td>Drinking habit</td>
    <td><%=ff.getDrinking_habit()%></td>
  </tr>
  <tr>
  <td>Smoking habit</td>
   <td><%=ff.getSmoking_habit()%></td>
  </tr>
  <tr>
    <td>Education in details</td>
    <td><%=ff.getEducation_details()%></td>
  </tr>
  <tr>
  <td>Occupation in details</td>
   <td><%=ff.getOccupation_details()%></td>
  </tr>
  
   <tr>
    <th colspan="2" >Family Info</th>

  </tr>
  <tr>
    <td width="300px" text-align: left;>Family type</td>
    <td ><%=ff.getFamily_type()%></td>
  </tr>
  <tr>
    <td>Family values</td>
    <td><%=ff.getFamily_values()%></td>
  </tr>
  <tr>
    <td>Family status</td>
    <td><%=ff.getFamily_status()%></td>
  </tr>
  <tr>
    <td>Father status</td>
    <td><%=ff.getFather_status()%></td>
  </tr>
  <tr>
    <td>Mother status</td>
    <td><%=ff.getMother_status()%></td>
  </tr>
  <tr>
    <td>Brothers</td>
    <td> <%=ff.getBrothers()%></td>
  </tr>
  <tr>
    <td>Sisters</td>
    <td><%=ff.getSisters()%></td>
  </tr>
  <tr>
    <td>About family</td>
    <td> <%=ff.getAbout_family()%></td>
  </tr>
  <tr>
    <td>Family location </td>
    <td><%=ff.getFamily_location() %></td>
  </tr>
  <tr>
    <td>Ancestral origin</td>
    <td> <%=ff.getAncestral_origin() %></td>
  </tr>
  <tr>
    <td>Favourite cousion</td>
    <td><%=ff.getFavourite_cousion() %><br></td>
  </tr>
  <tr>
    <td>Family no</td>
    <td><%=ff.getPhone() %></td>
  </tr>
  <tr>
    <td>District</td>
    <td>  <%=ff.getDistrict()  %></td>
  </tr>
  <tr>
    <td>state where family stay </td>
    <td> <%=ff.getState() %></td>
  </tr>
    
</table>
</th>
<th width="100px"></th>
</table>
</div>
</div>
</div>
</body>



</html>


























 
	  	
	  		  	
	




		
	 
								   
  									
  									
  								
  					               
  					              
  					               
  					               
  					               
  					              
  					               
				                   
			
		
					
					
									
					
			<!--  				
									
				Hobbies: <%=view.getHobbies() %> <br>  
				Interest: <%=view.getInterest() %>	<br>	  
				Like_to_do :<%=view.getLike_to_do() %><br>
				Prefer_style:<%=view.getPrefer_style() %> <br>     
				Songs : <%=view.getSongs() %>     <br>
				Movie :<%=view.getMovies() %>		  <br>    
				Sports :<%=view.getSports() %>     <br>
				Fitness: <%=view.getFitness() %>		<br>  
				What_in_partner: <%=view.getWhat_in_partner() %><br>   
				Resident_state:<%=view.getResident_state() %> 	  <br>
				Citizenship : <%=view.getCitizenship() %>      <br>
				Bride_age: <%=view.getBride_age() %> 		  <br>
				Groom_agegroom_age:<%=view.getGroom_age() %> <br>
				About_partner : <%=view.getAbout_partner() %><br>
				Language :<%=view.getLanguage() %><br>
				
				
				
				
				<br>
				<br>
				<br>
				----------------------------------------------------------------<br>
									
				
				Family location: 		<br>  
				favourite cousion: <%=ff.getFavourite_cousion() %><br>   
				About family:<%=ff.getAbout_family() %> 	  <br>
				Phone : <%=ff.getPhone() %>      <br>
				Education details: <%=ff.getEducation_details() %> 		  <br>
				Occupation details:<%=ff.getOccupation_details() %> <br>
				Eating habit : <%=ff.getEating_habit()%><br>
				Drinking habit :<%=ff.getDrinking_habit() %><br>
				
				Groom_agegroom_age:<%=ff.getSmoking_habit() %> <br>
				
				Language :<%=ff.getAncestral_origin() %><br>
				
				
				<br>
				<br>
				<br>
				----------------------------------------------<br>
				
				<br>	      
				Caste: <%=hh.getCaste() %>		<br>  
				Dosh: <%=hh.getDosh() %><br>   
			    Gothra:<%=hh.getGotra() %> 	  <br>
				Manglik : <%=hh.getManglik() %>      <br>
				Marry other communities: <%=hh.getMarryother_communities() %> 		  <br>
				Place of birth:<%=hh.getPlace_of_birth() %> <br>
				Rasi : <%=hh.getRasi() %><br>
				Star :<%=hh.getStar() %><br>
				
				
			
				Time of birth:<%=hh.getTime_of_birth() %> <br>
				Sub caste : <%=hh.getSub_caste()%><br>
								
				
				
								-->
																	
									
					
  											 				  									
  									 		
  											
