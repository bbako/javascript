package org.phy.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.phy.domain.MemberVO;
import org.phy.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	MemberService memberService;
	
	@PostMapping(value = "login")
	public @ResponseBody List<MemberVO> sendadlist(MemberVO memberVO){
		logger.info("zzzzzzzzzzzzzzzdddd");
		logger.info(memberVO.toString());
		
		List<MemberVO> list = new ArrayList<>();
		list = memberService.getLoginInfo(memberVO);
		return list;
		
	}
	
}
