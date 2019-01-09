package org.phy.service;

import javax.inject.Inject;
import org.phy.persistence.BoardDAO;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO dao;
	

}
