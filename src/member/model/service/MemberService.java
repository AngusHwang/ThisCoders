package member.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;
public class MemberService {
	
	
	public MemberService() {}

	public Member login(Member member) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().login(conn,member);
		
		return loginUser;
	}
	
	
	
}
