package test.dev.vo;

public class MemberVO {

	private String id;
	private String passwd;
	private String name;
	private String mail;

	public MemberVO(String id, String pwd, String name, String mail) {
		this.id=id;
		this.passwd = pwd;
		this.name=name;
		this.mail=mail;
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

}
