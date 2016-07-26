package com.eshore.university.module.pojo;

public class TClassInfo {
	
	private Integer classId;//
	private Integer courseId;//课程ID
	private Integer termId;//学期ID
	private Integer staffId;//教师ID
	private Integer rooma;//教室ID
	private Integer totalNum;//
	private Integer enteredNum;//
	private String state;//
	private Integer timea;//
	private Integer timeb;//
	private Integer roomb;//
	private String cname;//班级名
	
	private String coursename;
	private String staffname;
	private String termname;
	private String tinfoa;
	private String tinfob;
	private String positiona;
	private String positionb;
	
	public TClassInfo() {
		// TODO Auto-generated constructor stub
	}

	public TClassInfo(Integer classId, Integer courseId, Integer termId,
			Integer staffId, Integer rooma, Integer totalNum,
			Integer enteredNum, String state, Integer timea, Integer timeb,
			Integer roomb, String cname, String coursename, String staffname,
			String termname, String tinfoa, String tinfob, String positiona,
			String positionb) {
		super();
		this.classId = classId;
		this.courseId = courseId;
		this.termId = termId;
		this.staffId = staffId;
		this.rooma = rooma;
		this.totalNum = totalNum;
		this.enteredNum = enteredNum;
		this.state = state;
		this.timea = timea;
		this.timeb = timeb;
		this.roomb = roomb;
		this.cname = cname;
		this.coursename = coursename;
		this.staffname = staffname;
		this.termname = termname;
		this.tinfoa = tinfoa;
		this.tinfob = tinfob;
		this.positiona = positiona;
		this.positionb = positionb;
	}

	public Integer getClassId() {
		return classId;
	}

	public void setClassId(Integer classId) {
		this.classId = classId;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Integer getTermId() {
		return termId;
	}

	public void setTermId(Integer termId) {
		this.termId = termId;
	}

	public Integer getStaffId() {
		return staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public Integer getRooma() {
		return rooma;
	}

	public void setRooma(Integer rooma) {
		this.rooma = rooma;
	}

	public Integer getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(Integer totalNum) {
		this.totalNum = totalNum;
	}

	public Integer getEnteredNum() {
		return enteredNum;
	}

	public void setEnteredNum(Integer enteredNum) {
		this.enteredNum = enteredNum;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getTimea() {
		return timea;
	}

	public void setTimea(Integer timea) {
		this.timea = timea;
	}

	public Integer getTimeb() {
		return timeb;
	}

	public void setTimeb(Integer timeb) {
		this.timeb = timeb;
	}

	public Integer getRoomb() {
		return roomb;
	}

	public void setRoomb(Integer roomb) {
		this.roomb = roomb;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getStaffname() {
		return staffname;
	}

	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}

	public String getTermname() {
		return termname;
	}

	public void setTermname(String termname) {
		this.termname = termname;
	}

	public String getTinfoa() {
		return tinfoa;
	}

	public void setTinfoa(String tinfoa) {
		this.tinfoa = tinfoa;
	}

	public String getTinfob() {
		return tinfob;
	}

	public void setTinfob(String tinfob) {
		this.tinfob = tinfob;
	}

	public String getPositiona() {
		return positiona;
	}

	public void setPositiona(String positiona) {
		this.positiona = positiona;
	}

	public String getPositionb() {
		return positionb;
	}

	public void setPositionb(String positionb) {
		this.positionb = positionb;
	}
	
}
