package org.phy.service;

import java.util.List;

import org.phy.domain.MemberVO;

public interface MemberService {
	
	public MemberVO memberOne();

	public List<MemberVO> getLoginInfo(MemberVO memberVO);

	public MemberVO checkSessionKey(String key);

}
