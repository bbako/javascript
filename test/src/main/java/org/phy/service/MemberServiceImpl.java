package org.phy.service;

import javax.inject.Inject;
import org.phy.domain.MemberVO;
import org.phy.persistence.MemberDAO;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO dao;

	@Override
	public MemberVO memberOne() {
		return null;
	}
	
	


}
