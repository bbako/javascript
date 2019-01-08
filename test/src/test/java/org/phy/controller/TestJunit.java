package org.phy.controller;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.phy.domain.MemberVO;
import org.phy.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Handles requests for the application home page.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class TestJunit {
	
	private static final Logger logger = LoggerFactory.getLogger(TestJunit.class);
	
	 
	@Inject
	SqlSessionTemplate sess;
	   
	   @Test
	   public void memberserviceTest() throws Exception{
	   }
	   
	   @Test
		public void getTime() throws Exception{
		   logger.info("aaaaaaa");
		   logger.info(sess.selectOne("org.phy.persistence.MemberDAO.getTime"));
		}
	   
	}
