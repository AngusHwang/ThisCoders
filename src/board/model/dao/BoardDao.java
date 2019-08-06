package board.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Board;
import member.model.vo.Avatar;

public class BoardDao {

	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 전체 게시글의 수(COUNT)를 구하는 DAO입니다.
	 * 메모리관리를 위해 테이블에서 BOARD_NO만을 SELECT COUNT()합니다.
	 * 삭제된 게시글(BOARD_DELETE_YN = 'N')의 경우 참조하지 않습니다.
	 * @param conn
	 * @return count
	 */
	public int getBoardCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int count = 0;
		try {
			String query = prop.getProperty("getBoardCount");
			// getBoardCount = SELECT COUNT(BOARD_NO) FROM BOARD WHERE BOARD_DELETE_YN = 'N'
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next()) count = rset.getInt("COUNT(BOARD_NO)");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return count;
	}

	/**
	 * 페이지의 게시물을 조회하는 DAO입니다.
	 * 메모리 관리를 위해 currentPage에만 해당되는 게시물만을 조회합니다.
	 * 삭제된 게시글(BOARD_DELETE_YN = 'N')의 경우 참조하지 않습니다.
	 * @param conn
	 * @param currentPage
	 * @param endRow
	 * @return bList
	 */
	public ArrayList<Board> selectList(Connection conn, int currentPage, int limit) {
		ArrayList<Board> bList = new ArrayList<Board>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int startRow = (currentPage-1)*limit + 1;
		int endRow = (startRow + limit - 1);
		try {
			String query = prop.getProperty("selectList");
			// SELECT * FROM (SELECT ROWNUM AS RNUM, BOARD_NO, CAT_NAME, BOARD_TITLE, BOARD_CONTENT, USER_NAME, AVA_NICKNAME, BOARD_COUNT, BOARD_WRITE_DATE, BOARD_UPDATE_DATE FROM(SELECT * FROM BLIST) WHERE BOARD_DELETE_YN = 'N') WHERE RNUM BETWEEN ? AND ?;
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				bList.add(new Board(
						rset.getInt("BOARD_NO"),
						rset.getInt("BOARD_COUNT"),
						rset.getString("BOARD_TITLE"),
						rset.getString("BOARD_CONTENT"),
						rset.getString("AVA_NICKNAME"),
						rset.getString("CAT_NAME"),
						rset.getDate("BOARD_WRITE_DATE"),
						rset.getDate("BOARD_UPDATE_DATE")
						));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return bList;
	}

	/**
	 * 게시물을 상세조회하는 DAO입니다.
	 * boardNo를 매개변수로하여 해당 게시글만 board객체에 담아옵니다.
	 * 아바타의 정보도 게시글에 담기기에 두개의 객체를 리스트에 담아 리턴합니다.
	 * @param conn
	 * @param boardNo
	 * @return ArrayList<Object>
	 */
	public ArrayList<Object> selectBoard(Connection conn, int boardNo) {
		ArrayList<Object> al = new ArrayList<Object>();
		Board board = null;
		Avatar avatar = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			String query = prop.getProperty("selectBoard");
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				board = new Board(
				rset.getInt("BOARD_NO"),
				rset.getInt("BOARD_COUNT"),
				rset.getString("BOARD_TITLE"),
				rset.getString("BOARD_CONTENT"),
				rset.getString("AVA_NICKNAME"),
				rset.getString("CAT_NAME"),
				rset.getDate("BOARD_WRITE_DATE"),
				rset.getDate("BOARD_UPDATE_DATE"));
				avatar = new Avatar("", rset.getString("AVA_PORTRAIT"), rset.getString("AVA_NICKNAME"), "");
				al.add(board);
				al.add(avatar);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return al;
	}

	/**
	 * 게시글 작성 DAO입니다. 
	 * @param conn
	 * @param board
	 * @return result
	 */
	public int insertBoard(Connection conn, Board board) {
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			String query = prop.getProperty("insertBoard");
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board.getBoardTitle());
			pstmt.setString(2, board.getBoardContent());
			pstmt.setString(3, board.getBoardWriter());
			pstmt.setInt(4, Integer.parseInt(board.getCatName()));
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
}
