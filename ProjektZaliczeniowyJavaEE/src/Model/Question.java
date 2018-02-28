package Model;

public class Question {
	private int ID;
	private int USER_ID;
	private int AD_ID;
	private int STATUS;
	private String TEXT;
	public Question(int iD, int uSER_ID, int aD_ID, int sTATUS, String tEXT) {
		super();
		ID = iD;
		USER_ID = uSER_ID;
		AD_ID = aD_ID;
		STATUS = sTATUS;
		TEXT = tEXT;
	}
	public Question() {
		super();
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int uSER_ID) {
		USER_ID = uSER_ID;
	}
	public int getAD_ID() {
		return AD_ID;
	}
	public void setAD_ID(int aD_ID) {
		AD_ID = aD_ID;
	}
	public int getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(int sTATUS) {
		STATUS = sTATUS;
	}
	public String getTEXT() {
		return TEXT;
	}
	public void setTEXT(String tEXT) {
		TEXT = tEXT;
	}


}
