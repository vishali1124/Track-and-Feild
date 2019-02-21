package models;

public class Events {

	private int eId;
	private String eName;
	private String meetType;
	private String gType;
	private int maxNo;
	
	public Events(String eName, String meetType, String gType, int maxNo) {
		//this.eId = eId;
		this.eName = eName;
		this.meetType = meetType;
		this.gType = gType;
		this.maxNo = maxNo;
	}

	public int geteId() {
		return eId;
	}

	public void seteId(int eId) {
		this.eId = eId;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getMeetType() {
		return meetType;
	}

	public void setMeetType(String meetType) {
		this.meetType = meetType;
	}

	public String getgType() {
		return gType;
	}

	public void setgType(String gType) {
		this.gType = gType;
	}

	public int getMaxNo() {
		return maxNo;
	}

	public void setMaxNo(int maxNo) {
		this.maxNo = maxNo;
	}
	
	
}
