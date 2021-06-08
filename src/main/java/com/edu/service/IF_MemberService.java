package com.edu.service;

import java.util.List;

import com.edu.vo.MemberVO;

public interface IF_MemberService {
	
	public List<MemberVO> selectMember() throws Exception;

}
