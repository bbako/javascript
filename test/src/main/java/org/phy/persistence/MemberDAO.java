package org.phy.persistence;

import java.util.List;

import org.phy.domain.MemberVO;

public interface MemberDAO {
	
	public MemberVO memberOne();

	public List<MemberVO> getLoginInfo(MemberVO memberVO);

	public MemberVO checkSessionKey(String key);

}
