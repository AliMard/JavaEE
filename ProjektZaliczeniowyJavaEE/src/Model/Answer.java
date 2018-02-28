package Model;

public class Answer {
	private int ID;
	private int USER_ID;
	private int QUEST_ID;
	private String TEXT;
	public Answer(int iD, int uSER_ID, int qUEST_ID, String tEXT) {
		super();
		ID = iD;
		USER_ID = uSER_ID;
		QUEST_ID = qUEST_ID;
		TEXT = tEXT;
	}
	public Answer() {
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
	public int getQUEST_ID() {
		return QUEST_ID;
	}
	public void setQUEST_ID(int qUEST_ID) {
		QUEST_ID = qUEST_ID;
	}
	public String getTEXT() {
		return TEXT;
	}
	public void setTEXT(String tEXT) {
		TEXT = tEXT;
	}


}
