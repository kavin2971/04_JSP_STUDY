package poll;

public class PollListBean {
private int num;		// 번호
private String question;// 질문
private String sdate;	// 시작날짜
private String edate;	// 종료날짜
private String wdate;	
private int type;
private int active;

public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public String getSdate() {
	return sdate;
}
public void setSdate(String sdate) {
	this.sdate = sdate;
}
public String getEdate() {
	return edate;
}
public void setEdate(String edate) {
	this.edate = edate;
}
public String getWdate() {
	return wdate;
}
public void setWdate(String wdate) {
	this.wdate = wdate;
}
public int getType() {
	return type;
}
public void setType(int type) {
	this.type = type;
}
public int getActive() {
	return active;
}
public void setActive(int active) {
	this.active = active;
}


}