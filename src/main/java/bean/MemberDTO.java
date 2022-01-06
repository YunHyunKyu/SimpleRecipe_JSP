package bean;

public class MemberDTO {
	String id;
	String pw;
	String job;
	String email;
	boolean addChk;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isAddChk() {
		return addChk;
	}
	public void setAddChk(boolean addChk) {
		this.addChk = addChk;
	}
}
