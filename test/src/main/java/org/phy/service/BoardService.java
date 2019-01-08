package org.phy.service;

import java.util.List;
import org.phy.domain.BoardVO;

public interface BoardService {
	
	public void create(BoardVO VO);
	public List<BoardVO> listAll(int page);
	public int total();
	public List<BoardVO> listSearch(String key, int page);
	public int totalSearch(String key);
	public List<BoardVO> serachAuto(String key);
	public BoardVO showOne(String title);




}
