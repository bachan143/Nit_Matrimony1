package mm.db;

public class Family 
{                                    		   
	String emailid;
	String family_type; 		
	String family_status;       
	String family_values;       
	String father_status;		
	String mother_status;       
	String brothers; 		    
	String sisters;             
	String family_location; 	
    String favourite_cousion;    
	String about_family; 		
	String phone;               
	String education_details;   
	String occupation_details;   
	String eating_habit;        
	String drinking_habit;		
	String smoking_habit;       
	String district;		    
	String state;
	String ancestral_origin;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getFamily_type() {
		return family_type;
	}
	public void setFamily_type(String family_type) {
		this.family_type = family_type;
	}
	public String getFamily_status() {
		return family_status;
	}
	public void setFamily_status(String family_status) {
		this.family_status = family_status;
	}
	public String getFamily_values() {
		return family_values;
	}
	public void setFamily_values(String family_values) {
		this.family_values = family_values;
	}
	public String getFather_status() {
		return father_status;
	}
	public void setFather_status(String father_status) {
		this.father_status = father_status;
	}
	public String getMother_status() {
		return mother_status;
	}
	public void setMother_status(String mother_status) {
		this.mother_status = mother_status;
	}
	public String getBrothers() {
		return brothers;
	}
	public void setBrothers(String brothers) {
		this.brothers = brothers;
	}
	public String getSisters() {
		return sisters;
	}
	public void setSisters(String sisters) {
		this.sisters = sisters;
	}
	public String getFamily_location() {
		return family_location;
	}
	public void setFamily_location(String family_location) {
		this.family_location = family_location;
	}
	public String getFavourite_cousion() {
		return favourite_cousion;
	}
	public void setFavourite_cousion(String favourite_cousion) {
		this.favourite_cousion = favourite_cousion;
	}
	public String getAbout_family() {
		return about_family;
	}
	public void setAbout_family(String about_family) {
		this.about_family = about_family;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEducation_details() {
		return education_details;
	}
	public void setEducation_details(String education_details) {
		this.education_details = education_details;
	}
	public String getOccupation_details() {
		return occupation_details;
	}
	public void setOccupation_details(String occupation_details) {
		this.occupation_details = occupation_details;
	}
	public String getEating_habit() {
		return eating_habit;
	}
	public void setEating_habit(String eating_habit) {
		this.eating_habit = eating_habit;
	}
	public String getDrinking_habit() {
		return drinking_habit;
	}
	public void setDrinking_habit(String drinking_habit) {
		this.drinking_habit = drinking_habit;
	}
	public String getSmoking_habit() {
		return smoking_habit;
	}
	public void setSmoking_habit(String smoking_habit) {
		this.smoking_habit = smoking_habit;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAncestral_origin() {
		return ancestral_origin;
	}
	public void setAncestral_origin(String ancestral_origin) {
		this.ancestral_origin = ancestral_origin;
	}
	@Override
	public String toString() {
		return "Family [emailid=" + emailid + ", family_type=" + family_type + ", family_status=" + family_status
				+ ", family_values=" + family_values + ", father_status=" + father_status + ", mother_status="
				+ mother_status + ", brothers=" + brothers + ", sisters=" + sisters + ", family_location="
				+ family_location + ", favourite_cousion=" + favourite_cousion + ", about_family=" + about_family
				+ ", phone=" + phone + ", education_details=" + education_details + ", occupation_details="
				+ occupation_details + ", eating_habit=" + eating_habit + ", drinking_habit=" + drinking_habit
				+ ", smoking_habit=" + smoking_habit + ", district=" + district + ", state=" + state
				+ ", ancestral_origin=" + ancestral_origin + "]";
	}
	public Family(String emailid, String family_type, String family_status, String family_values, String father_status,
			String mother_status, String brothers, String sisters, String family_location, String favourite_cousion,
			String about_family, String phone, String education_details, String occupation_details, String eating_habit,
			String drinking_habit, String smoking_habit, String district, String state, String ancestral_origin) {
		super();
		this.emailid = emailid;
		this.family_type = family_type;
		this.family_status = family_status;
		this.family_values = family_values;
		this.father_status = father_status;
		this.mother_status = mother_status;
		this.brothers = brothers;
		this.sisters = sisters;
		this.family_location = family_location;
		this.favourite_cousion = favourite_cousion;
		this.about_family = about_family;
		this.phone = phone;
		this.education_details = education_details;
		this.occupation_details = occupation_details;
		this.eating_habit = eating_habit;
		this.drinking_habit = drinking_habit;
		this.smoking_habit = smoking_habit;
		this.district = district;
		this.state = state;
		this.ancestral_origin = ancestral_origin;
	}
	public Family() {
		super();
	}
	}
	
	