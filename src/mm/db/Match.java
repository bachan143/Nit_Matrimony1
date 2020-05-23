package mm.db;

public class Match 
{
	String emailid ; 		  
	String hobbies ;          
	String interest ;		  
	String like_to_do;        
	String prefer_style;      
	String songs ;            
	String movies;		      
	String sports ;            
	String fitness ;		  
	String what_in_partner;   
	String resident_state ;	  
	String citizenship ;      
	String bride_age ;		  
	String groom_age ;
	String about_partner;
    String language ;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getHobbies() {
		return hobbies;
	}
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getLike_to_do() {
		return like_to_do;
	}
	public void setLike_to_do(String like_to_do) {
		this.like_to_do = like_to_do;
	}
	public String getPrefer_style() {
		return prefer_style;
	}
	public void setPrefer_style(String prefer_style) {
		this.prefer_style = prefer_style;
	}
	public String getSongs() {
		return songs;
	}
	public void setSongs(String songs) {
		this.songs = songs;
	}
	public String getMovies() {
		return movies;
	}
	public void setMovies(String movies) {
		this.movies = movies;
	}
	public String getSports() {
		return sports;
	}
	public void setSports(String sports) {
		this.sports = sports;
	}
	public String getFitness() {
		return fitness;
	}
	public void setFitness(String fitness) {
		this.fitness = fitness;
	}
	public String getWhat_in_partner() {
		return what_in_partner;
	}
	public void setWhat_in_partner(String what_in_partner) {
		this.what_in_partner = what_in_partner;
	}
	public String getResident_state() {
		return resident_state;
	}
	public void setResident_state(String resident_state) {
		this.resident_state = resident_state;
	}
	public String getCitizenship() {
		return citizenship;
	}
	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	public String getBride_age() {
		return bride_age;
	}
	public void setBride_age(String bride_age) {
		this.bride_age = bride_age;
	}
	public String getGroom_age() {
		return groom_age;
	}
	public void setGroom_age(String groom_age) {
		this.groom_age = groom_age;
	}
	public String getAbout_partner() {
		return about_partner;
	}
	public void setAbout_partner(String about_partner) {
		this.about_partner = about_partner;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	@Override
	public String toString() {
		return "Match [emailid=" + emailid + ", hobbies=" + hobbies + ", interest=" + interest + ", like_to_do="
				+ like_to_do + ", prefer_style=" + prefer_style + ", songs=" + songs + ", movies=" + movies
				+ ", sports=" + sports + ", fitness=" + fitness + ", what_in_partner=" + what_in_partner
				+ ", resident_state=" + resident_state + ", citizenship=" + citizenship + ", bride_age=" + bride_age
				+ ", groom_age=" + groom_age + ", about_partner=" + about_partner + ", language=" + language + "]";
	}
	public Match(String emailid, String hobbies, String interest, String like_to_do, String prefer_style, String songs,
			String movies, String sports, String fitness, String what_in_partner, String resident_state,
			String citizenship, String bride_age, String groom_age, String about_partner, String language) {
		super();
		this.emailid = emailid;
		this.hobbies = hobbies;
		this.interest = interest;
		this.like_to_do = like_to_do;
		this.prefer_style = prefer_style;
		this.songs = songs;
		this.movies = movies;
		this.sports = sports;
		this.fitness = fitness;
		this.what_in_partner = what_in_partner;
		this.resident_state = resident_state;
		this.citizenship = citizenship;
		this.bride_age = bride_age;
		this.groom_age = groom_age;
		this.about_partner = about_partner;
		this.language = language;
	}
	public Match() {
		super();
	}
	
	
	
}
