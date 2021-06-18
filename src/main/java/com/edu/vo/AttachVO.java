package com.edu.vo;

import java.util.Date;

/**
 * 이 클래스는 첨부파일 입출력에 사용될 멤버변수를 생성하는 클래스
 * @author 진미래
 *
 */
public class AttachVO {
	private String save_file_name;//UUID클래스(고유해시데이터를 생성하는 클래스)로 생성예정, 실제 저장된 파일명으로 사용
	private String real_file_name;//화면에 보이는 파일명.
	private Date rag_date;//첨부파일 저장시
	private Integer bno;//외래키FK-게시물번호
	public String getSave_file_name() {
		return save_file_name;
	}
	public void setSave_file_name(String save_file_name) {
		this.save_file_name = save_file_name;
	}
	public String getReal_file_name() {
		return real_file_name;
	}
	public void setReal_file_name(String real_file_name) {
		this.real_file_name = real_file_name;
	}
	public Date getRag_date() {
		return rag_date;
	}
	public void setRag_date(Date rag_date) {
		this.rag_date = rag_date;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	
}
