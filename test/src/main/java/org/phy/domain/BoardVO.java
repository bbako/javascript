package org.phy.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	int seq_id ;
	String board_title, board_content, board_writer;
	Date board_datetime;
	int board_viewcounter;
	
}
