package member.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import member.model.vo.Member;

import static common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop = new Properties();
	
	
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public Member login(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("idCheck");
		Member loginUser = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member(
						rset.getString("USERID"),
						rset.getString("USERPWD"),
						rset.getString("USERNAME"), 
						rset.getString("USERBIRTHDAY"), 
						rset.getString("USEREMAIL"), 
						rset.getString("USERADDR"), 
						rset.getString("USERPHONE"), 
						rset.getString("USER_ADD_CERTI"), 
						rset.getString("USER_ADD_CAREER"),
						rset.getString("USER_ADD_AWARD"),
						rset.getString("USER_ADD_AVAILLANG"),
						rset.getDate("ENROLL_DATE"),
						rset.getDate("UPDATE_DATE"),
						rset.getString("STATUS").charAt(0),
						rset.getString("ADMIN_YN").charAt(0)
						);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}
	
}
