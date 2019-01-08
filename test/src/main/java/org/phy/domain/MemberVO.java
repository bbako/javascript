package org.phy.domain;

import java.util.Date;
import lombok.Data;

@Data
public class MemberVO {
	
	int	m_id;
	String full_name , email, password, phone_no, message;
	Date reg_date;

}
