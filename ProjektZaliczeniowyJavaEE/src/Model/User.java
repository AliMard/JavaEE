package Model;

public class User {
	private int ID;
	private String LOGIN;
	private String PASSWORD;
	private int PHONE;
	private String NAME;
	public User() {
		super();
	}
	public User(int iD, String login, String password, int phone, String name) {
		super();
		ID = iD;
		LOGIN = login;
		PASSWORD = password;
		PHONE = phone;
		NAME = name;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getLOGIN() {
		return LOGIN;
	}
	public void setLOGIN(String lOGIN) {
		LOGIN = lOGIN;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public int getPHONE() {
		return PHONE;
	}
	public void setPHONE(int pHONE) {
		PHONE = pHONE;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}

	
	

}
