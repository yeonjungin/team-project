package test.dev.vo;


public class CartVO  {
	private String C_ID;
	private String C_NAME;
	private int C_UNITPRICE;
	private String C_FILENAME;
	private int C_COUNT;
	private String L_ID;
	private int C_SUM=C_COUNT*C_UNITPRICE;
	public String getLID() {
		return L_ID;
	}
	public void setLID(String L_ID) {
		this.L_ID=L_ID;
	}
	public String getCID() {
		return C_ID;
	}

	public void setCID(String C_ID) {
		this.C_ID = C_ID;
	}

	public String getCNAME() {
		return C_NAME;
	}

	public void setCNAME(String C_NAME) {
		this.C_NAME = C_NAME;
	}

	public int getUNITPRICE() {
		return C_UNITPRICE;
	}

	public void setUNITPRICE(int C_UNITPRICE) {
		this.C_UNITPRICE = C_UNITPRICE;
	}

	public String getFILENAME() {
		return C_FILENAME;
	}

	public void setFILENAME(String C_FILENAME) {
		this.C_FILENAME = C_FILENAME;
	}
	public int getCOUNT() {
		return C_COUNT;
	}

	public void setCOUNT(int C_COUNT) {
		this.C_COUNT = C_COUNT;
	}
	public int getSum() {
		return C_SUM;
	}
	public void setSum(int C_SUM) {
		this.C_SUM=C_SUM;
	}
	
}
