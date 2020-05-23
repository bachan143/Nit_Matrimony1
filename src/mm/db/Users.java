package mm.db;

public class Users {
	
	private String emailid; 		   
	private String password;      	    
	private String name ;	  	    
	private String gender;   	    
	private String date_of_birth; 	    
	private String age        ; 	    
	private String religion   ;  
	private String mother_tounge;    
	private String martial_status;    
	private String body ;   
	private String height ; 
	private String weight ;
	private String address ;
	private String country ;  
	private String photos ;  
	private String occupation ;
	private String salary ;
	private String income ;
	private String disability ;
	private String about_me   ;
	private String highest_education ;
	private String employed_in ;
	private String college	  ;
	private String state;
	private String city;
	private String additional_degree ;
	private String blood_group;
	private String designation;
	private String complexion;
	private String diet;
	private String language;
	private String nationality;
	
	
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getMother_tounge() {
		return mother_tounge;
	}
	public void setMother_tounge(String mother_tounge) {
		this.mother_tounge = mother_tounge;
	}
	public String getMartial_status() {
		return martial_status;
	}
	public void setMartial_status(String martial_status) {
		this.martial_status = martial_status;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public String getDisability() {
		return disability;
	}
	public void setDisability(String disability) {
		this.disability = disability;
	}
	public String getAbout_me() {
		return about_me;
	}
	public void setAbout_me(String about_me) {
		this.about_me = about_me;
	}
	public String getHighest_education() {
		return highest_education;
	}
	public void setHighest_education(String highest_education) {
		this.highest_education = highest_education;
	}
	public String getEmployed_in() {
		return employed_in;
	}
	public void setEmployed_in(String employed_in) {
		this.employed_in = employed_in;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAdditional_degree() {
		return additional_degree;
	}
	public void setAdditional_degree(String additional_degree) {
		this.additional_degree = additional_degree;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getComplexion() {
		return complexion;
	}
	public void setComplexion(String complexion) {
		this.complexion = complexion;
	}
	public String getDiet() {
		return diet;
	}
	public void setDiet(String diet) {
		this.diet = diet;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	@Override
	public String toString() {
		return "Users [emailid=" + emailid + ", password=" + password + ", name=" + name + ", gender=" + gender
				+ ", date_of_birth=" + date_of_birth + ", Age=" + age + ", religion=" + religion + ", mother_tounge="
				+ mother_tounge + ", martial_status=" + martial_status + ", body=" + body + ", height=" + height
				+ ", weight=" + weight + ", address=" + address + ", country=" + country + ", photos=" + photos
				+ ", occupation=" + occupation + ", salary=" + salary + ", income=" + income + ", disability="
				+ disability + ", about_me=" + about_me + ", highest_education=" + highest_education + ", employed_in="
				+ employed_in + ", college=" + college + ", state=" + state + ", city=" + city + ", Additional_degree="
				+ additional_degree + "]";
	}
	public Users(String emailid, String password, String name, String gender, String date_of_birth, String age,
			String religion, String mother_tounge, String martial_status, String body, String height, String weight,
			String address, String country, String photos, String occupation, String salary, String income,
			String disability, String about_me, String highest_education, String employed_in, String college,
			String state, String city, String additional_degree) {
		super();
		this.emailid = emailid;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.date_of_birth = date_of_birth;
		this.age = age;
		this.religion = religion;
		this.mother_tounge = mother_tounge;
		this.martial_status = martial_status;
		this.body = body;
		this.height = height;
		this.weight = weight;
		this.address = address;
		this.country = country;
		this.photos = photos;
		this.occupation = occupation;
		this.salary = salary;
		this.income = income;
		this.disability = disability;
		this.about_me = about_me;
		this.highest_education = highest_education;
		this.employed_in = employed_in;
		this.college = college;
		this.state = state;
		this.city = city;
		this.additional_degree = additional_degree;
	}
	public Users() {
		super();
	}
	
	
}

	