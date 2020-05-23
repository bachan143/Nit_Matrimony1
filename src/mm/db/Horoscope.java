package mm.db;

public class Horoscope 
{
	 String emailid;         
	 String caste;           
	 String sub_caste; 		 
	 String dosh ;
	 String marryother_communities;
	 String manglik ;         
	 String gotra ;		     
	 String star ;           
	 String rasi ;		     
	 String time_of_birth;    
	 String place_of_birth;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getSub_caste() {
		return sub_caste;
	}
	public void setSub_caste(String sub_caste) {
		this.sub_caste = sub_caste;
	}
	public String getDosh() {
		return dosh;
	}
	public void setDosh(String dosh) {
		this.dosh = dosh;
	}
	public String getMarryother_communities() {
		return marryother_communities;
	}
	public void setMarryother_communities(String marryother_communities) {
		this.marryother_communities = marryother_communities;
	}
	public String getManglik() {
		return manglik;
	}
	public void setManglik(String manglik) {
		this.manglik = manglik;
	}
	public String getGotra() {
		return gotra;
	}
	public void setGotra(String gotra) {
		this.gotra = gotra;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getRasi() {
		return rasi;
	}
	public void setRasi(String rasi) {
		this.rasi = rasi;
	}
	public String getTime_of_birth() {
		return time_of_birth;
	}
	public void setTime_of_birth(String time_of_birth) {
		this.time_of_birth = time_of_birth;
	}
	public String getPlace_of_birth() {
		return place_of_birth;
	}
	public void setPlace_of_birth(String place_of_birth) {
		this.place_of_birth = place_of_birth;
	}
	
	@Override
	public String toString() {
		return "Horoscope [emailid=" + emailid + ", caste=" + caste + ", sub_caste=" + sub_caste + ", dosh=" + dosh
				+ ", marryother_communities=" + marryother_communities + ", manglik=" + manglik + ", gotra=" + gotra
				+ ", star=" + star + ", rasi=" + rasi + ", time_of_birth=" + time_of_birth + ", place_of_birth="
				+ place_of_birth + "]";
	}
	public Horoscope(String emailid, String caste, String sub_caste, String dosh, String marryother_communities,
			String manglik, String gotra, String star, String rasi, String time_of_birth, String place_of_birth) {
		super();
		this.emailid = emailid;
		this.caste = caste;
		this.sub_caste = sub_caste;
		this.dosh = dosh;
		this.marryother_communities = marryother_communities;
		this.manglik = manglik;
		this.gotra = gotra;
		this.star = star;
		this.rasi = rasi;
		this.time_of_birth = time_of_birth;
		this.place_of_birth = place_of_birth;
	}
	public Horoscope() {
		super();
	}
	 

 

}
