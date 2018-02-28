package Model;

public class Ad {
	private int ID;
	private int USER_ID;
	private String NAME;
	private String PICTURE;
	private String ADDRESS;
	private String DESCR;
	private int PRIZE;
	public Ad(int iD, int uSER_ID, String nAME, String pICTURE, String aDDRESS, String dESCR, int pRIZE) {
		super();
		ID = iD;
		USER_ID = uSER_ID;
		NAME = nAME;
		PICTURE = pICTURE;
		ADDRESS = aDDRESS;
		DESCR = dESCR;
		PRIZE = pRIZE;
	}
	public Ad() {
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
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getPICTURE() {
		return PICTURE;
	}
	public void setPICTURE(String pICTURE) {
		PICTURE = pICTURE;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getDESCR() {
		return DESCR;
	}
	public void setDESCR(String descr) {
		DESCR = descr;
	}
	public int getPRIZE() {
		return PRIZE;
	}
	public void setPRIZE(int pRIZE) {
		PRIZE = pRIZE;
	}

}
