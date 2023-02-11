package kr.or.ddit.vo;

public class QuestionVO {
	private int q_key;
	private int mem_key;
	private int answer_key;  
	private String q_title;
	private String q_content;
	private String q_date;
	private int q_view;
	
	private String mem_nick; // member join 

	
	public int getQ_key() {
		return q_key;
	}

	public void setQ_key(int q_key) {
		this.q_key = q_key;
	}

	public int getMem_key() {
		return mem_key;
	}

	public void setMem_key(int mem_key) {
		this.mem_key = mem_key;
	}

	public int getAnswer_key() {
		return answer_key;
	}

	public void setAnswer_key(int answer_key) {
		this.answer_key = answer_key;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getQ_date() {
		return q_date;
	}

	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}

	public int getQ_view() {
		return q_view;
	}

	public void setQ_view(int q_view) {
		this.q_view = q_view;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	
	
	
	
	
	
	
	
}
