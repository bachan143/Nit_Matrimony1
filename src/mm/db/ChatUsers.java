package mm.db;

public class ChatUsers {
private String name,email,password,status;
private String sEmail,sName;

public String getsEmail() {
	return sEmail;
}

public void setsEmail(String sEmail) {
	this.sEmail = sEmail;
}

public String getsName() {
	return sName;
}

public void setsName(String sName) {
	this.sName = sName;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

}
