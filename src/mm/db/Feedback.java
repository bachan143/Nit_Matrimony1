	
	package mm.db;

	public class Feedback
	{
		 String emailid;
		 String name;
		 String subject;
		 String feedback;
		public String getEmailid() {
			return emailid;
		}
		public void setEmailid(String emailid) {
			this.emailid = emailid;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getSubject() {
			return subject;
		}
		public void setSubject(String subject) {
			this.subject = subject;
		}
		public String getFeedback() {
			return feedback;
		}
		public void setFeedback(String feedback) {
			this.feedback = feedback;
		}
		@Override
		public String toString() {
			return "Feedback [emailid=" + emailid + ", name=" + name + ", subject=" + subject + ", feedback=" + feedback
					+ "]";
		}
		public Feedback(String emailid, String name, String subject, String feedback) {
			super();
			this.emailid = emailid;
			this.name = name;
			this.subject = subject;
			this.feedback = feedback;
		}
		public Feedback() {
			super();
		}
		 




	}



