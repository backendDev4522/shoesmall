package com.shosemall.member.service;

import java.util.Map;

import com.shosemall.member.vo.MemberVO;

public interface MemberService {
	public MemberVO login(Map loginMap) throws Exception;

	public void insertMember(MemberVO memberVO) throws Exception;

	public String overlapped(String id) throws Exception;
}
