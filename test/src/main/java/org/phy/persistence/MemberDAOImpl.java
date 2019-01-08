package org.phy.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.phy.domain.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sess;
	
	String namespace = "org.phy.persistence.MemberDAO";

	@Override
	public MemberVO memberOne() {
		return sess.selectOne(namespace+ ".memberOne");
	}


}
