<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%@page import="mm.db.Provider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Find Matches</li>
     </ul>
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_left">
   	  

   	  
   	  
   	  
	     <form>
	     
	     
	    
	    
                
              
               <div class="age_select">
		      <label for="edit-pass">Religion<span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="religion" required>
                       <option value="">Select</option>
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
                    <option value="">Select</option>
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
                 
                 
                 
                   
                  
            <div class="age_select">
		      <label for="edit-pass"> Age from<span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="agefrom">
                    
                    
	                   <option value="">Select</option>
	                    <option value="18">18</option>
	                    <option value="19">19</option>
	                    <option value="20">20</option>
	                    <option value="21">21</option>
	                    <option value="22">22</option>
	                    <option value="23">23</option>
	                    <option value="24">24</option>
	                    <option value="25">25</option>
	                    <option value="26">26</option>
	                    <option value="27">27</option>
	                    <option value="28">28</option>
	                    <option value="29">29</option>
	                    <option value="30">30</option>
	                    <option value="31">31</option>
	                    <option value="32">32</option>
	                    <option value="33">33</option>
	                    <option value="34">34</option>
	                    <option value="35">35</option>
	                    <option value="36">36</option>
	                    <option value="37">37</option>
	                    <option value="38">38</option>
	                    <option value="39">39</option>
	                    <option value="40">40</option>
	                    <option value="21">41</option>
	                    <option value="22">42</option>
	                    <option value="23">43</option>
	                    <option value="24">44</option>
	                    <option value="25">45</option>
	                    <option value="26">46</option>
	                    <option value="27">47</option>
	                    <option value="28">48</option>
	                    <option value="29">49</option>
	                    <option value="30">50</option>
	                    <option value="31">51</option>
	                    <option value="32">52</option>
	                    <option value="33">53</option>
	                    <option value="34">54</option>
	                    <option value="35">55</option>
	                    <option value="36">56</option>
	                    <option value="37">57</option>
	                    <option value="38">58</option>
	                    <option value="39">59</option>
	                    <option value="40">60</option>
	                    <option value="21">61</option>
	                    <option value="22">62</option>
	                    <option value="23">63</option>
	                    <option value="24">64</option>
	                    <option value="25">65</option>
	                    <option value="26">66</option>
	                    <option value="27">67</option>
	                    <option value="28">68</option>
	                    <option value="29">69</option>
	                    <option value="30">70</option>
	                    <option value="31">71</option>
	                    <option value="32">72</option>
	                    <option value="33">73</option>
	                    <option value="34">74</option>
	                    <option value="35">75</option>
	                    <option value="36">76</option>
	                    <option value="37">77</option>
	                    <option value="38">78</option>
	                    <option value="39">79</option>
	                    <option value="40">80</option>
	                    <option value="21">81</option>
	                    <option value="22">82</option>
	                    <option value="23">83</option>
	                    <option value="24">84</option>
	                    <option value="25">85</option>
	                    <option value="26">86</option>
	                    <option value="27">87</option>
	                    <option value="28">88</option>
	                    <option value="29">89</option>
	                    <option value="30">90</option>
	                    <option value="31">91</option>
	                    <option value="32">92</option>
	                    <option value="33">93</option>
	                    <option value="34">94</option>
	                    <option value="35">95</option>
	                    <option value="36">96</option>
	                    <option value="37">97</option>
	                    <option value="38">98</option>
	                    <option value="39">99</option>
	                    <option value="40">100</option>
	                    
                    </select>
                  </div>
            </div>
            </div>
            </div>
           <br>
            
                        <div class="age_select">
		      <label for="edit-pass"> To Age <span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="ageto">
	                   <option value="">Select</option>
	                    <option value="18">18</option>
	                    <option value="19">19</option>
	                    <option value="20">20</option>
	                    <option value="21">21</option>
	                    <option value="22">22</option>
	                    <option value="23">23</option>
	                    <option value="24">24</option>
	                    <option value="25">25</option>
	                    <option value="26">26</option>
	                    <option value="27">27</option>
	                    <option value="28">28</option>
	                    <option value="29">29</option>
	                    <option value="30">30</option>
	                    <option value="31">31</option>
	                    <option value="32">32</option>
	                    <option value="33">33</option>
	                    <option value="34">34</option>
	                    <option value="35">35</option>
	                    <option value="36">36</option>
	                    <option value="37">37</option>
	                    <option value="38">38</option>
	                    <option value="39">39</option>
	                    <option value="40">40</option>
	                     <option value="21">41</option>
	                    <option value="22">42</option>
	                    <option value="23">43</option>
	                    <option value="24">44</option>
	                    <option value="25">45</option>
	                    <option value="26">46</option>
	                    <option value="27">47</option>
	                    <option value="28">48</option>
	                    <option value="29">49</option>
	                    <option value="30">50</option>
	                    <option value="31">51</option>
	                    <option value="32">52</option>
	                    <option value="33">53</option>
	                    <option value="34">54</option>
	                    <option value="35">55</option>
	                    <option value="36">56</option>
	                    <option value="37">57</option>
	                    <option value="38">58</option>
	                    <option value="39">59</option>
	                    <option value="40">60</option>
	                    <option value="21">61</option>
	                    <option value="22">62</option>
	                    <option value="23">63</option>
	                    <option value="24">64</option>
	                    <option value="25">65</option>
	                    <option value="26">66</option>
	                    <option value="27">67</option>
	                    <option value="28">68</option>
	                    <option value="29">69</option>
	                    <option value="30">70</option>
	                    <option value="31">71</option>
	                    <option value="32">72</option>
	                    <option value="33">73</option>
	                    <option value="34">74</option>
	                    <option value="35">75</option>
	                    <option value="36">76</option>
	                    <option value="37">77</option>
	                    <option value="38">78</option>
	                    <option value="39">79</option>
	                    <option value="40">80</option>
	                    <option value="21">81</option>
	                    <option value="22">82</option>
	                    <option value="23">83</option>
	                    <option value="24">84</option>
	                    <option value="25">85</option>
	                    <option value="26">86</option>
	                    <option value="27">87</option>
	                    <option value="28">88</option>
	                    <option value="29">89</option>
	                    <option value="30">90</option>
	                    <option value="31">91</option>
	                    <option value="32">92</option>
	                    <option value="33">93</option>
	                    <option value="34">94</option>
	                    <option value="95">95</option>
	                    <option value="96">96</option>
	                    <option value="97">97</option>
	                    <option value="98">98</option>
	                    <option value="99">99</option>
	                    <option value="100">100</option>
	                    
	                    
                    </select>
                  </div>
            
			  <div class="age_select">
			    <input type="submit" id="edit-submit" name="op" value="Submit" class="btn_1 submit">
			  </div>
		 </form>
	  </div>
	  
		 </div>
            </div>
            </div> 
	  
	  
	  
	  
	  
	 
	  <div class="clearfix"> </div>
   </div>
  </div>
  
  <br>
  <br>
  <br>
  <h1>
   &nbsp;&nbsp;
  <u>
      Matches Results:
  </u>
  </h1>
     <%
 Connection con=Provider.getConnection();
 String religion,mother_tounge;
 String p2 = "profileimg/g.jpg";
	
	religion = request.getParameter("religion");
	mother_tounge = request.getParameter("mother_tounge");
     String agefrom=request.getParameter("agefrom");
     String ageto=request.getParameter("ageto");
	

	
	System.out.println(religion +" "+mother_tounge+" "+agefrom+" "+ageto);
	Users u =new Users();
	u.setEmailid((String)session.getAttribute("emailid"));
	String gender=UsersDao.getGender(u);
	String sql= "select * from users where  religion=? AND  mother_tounge = ? AND age between ? and ? and gender!=?";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1,religion);
	pst.setString(2,mother_tounge);
	pst.setString(3, agefrom);
	pst.setString(4, ageto);
	pst.setString(5, gender);
	
	ResultSet rs = pst.executeQuery();
	if(true) 
	{
	while(rs.next())
	{
		System.out.println ("================");
	String path = rs.getString("photos");
	String	name=rs.getString("name");
	String	age=rs.getString("age");
	String	emailid=rs.getString("emailid");
   
   
	if(path != null)
	{
		//out.println("<img src='"+path+"' class='img-rounded' height='300px'/>");
	%>
	  <div class="profile_top">
	  
	  <%
	  out.println ("<a href='view_profile.jsp?emailid="+emailid+"'>");
	  
	  %> 
	     
	    <div class="col-sm-3 profile_left-top">
	    	<%out.println("<img src='"+path+"' class='img-rounded' height='150px'/>"); %>
	  
	    </div>
	    <div class="col-sm-3">
	  
	    </div>
	  
		   <div class="buttons">
			   <div class="vertical">Send Mail</div>
			   <div class="vertical">View Profile</div>
			   <div class="vertical">Send Interest</div>
			   </a>
		   </div>
		Name:-<%=name %><br>
	   
	    Age	:-<%=age %><br>
	    Email Id:-<%=emailid %>
	    </div>
	    
	    </div>
	   <br><br><br>
<%
	}
 else
 {
	 %>
	 <div class="profile_top">
	 <% 
	 
	 out.println ("<a href='view_profile.jsp?emailid="+emailid+"'>");
	 %>
	 <div class="col-sm-3 profile_left-top">
	 <% 
   		out.println("<img src='"+p2+"' class='img-rounded' height='150px'/>");
   	
   %>
   </div>
   
       <div class="col-sm-3">
	  
	    </div>
   
   	  <div class="buttons">
	   <div class="vertical">Send Mail</div>
	   <div class="vertical">View Profile</div>
	   <div class="vertical">Send Interest</div>
	   </a>
   </div>
   

	  
Name:-<%=name %><br>
Age	:-<%=age %><br>
Email Id:-<%=emailid %>
</div>
<br><br><br>
<%
 }

}

}
	else
	{
		out.print("<h1>No Result Found</h1>");
		
	}


%>
  
</div>