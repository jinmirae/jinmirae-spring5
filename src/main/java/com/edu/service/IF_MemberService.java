package com.edu.service;

import java.util.List;

import com.edu.vo.MemberVO;

/**
 * 
 * @author 진미래
 *
 */

public interface IF_MemberService {
	
	public List<MemberVO> selectMember() throws Exception;
	//이곳에 CRUD 메서드가 계속 추가됩니다.
	public int countMember() throws Exception;
	
}
