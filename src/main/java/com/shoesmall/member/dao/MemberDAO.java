package com.shoesmall.member.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.shoesmall.member.vo.MemberVO;

public interface MemberDAO {
	public MemberVO login(Map loginMap) throws DataAccessException;

	public void insertMember(MemberVO memberVO) throws DataAccessException;

	public String selectOverlappedID(String id) throws DataAccessException;
}
