package org.phy.persistence;

import java.util.List;

import org.phy.domain.BoardVO;

public interface BoardDAO {
	
	public void create(BoardVO vo);
	public List<BoardVO> listAll(int page);
	public int total();
	public List<BoardVO> listSearch(String key, int page);
	public int totalSearch(String key);
	public List<BoardVO> serachAuto(String key);
	public BoardVO showOne(String title);
	public void viewCountUp(String title);

}
