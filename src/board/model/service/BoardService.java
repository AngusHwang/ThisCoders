package board.model.service;

import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;

public class BoardService {

	public BoardService() {}

	/**
	 * 전체 게시글의 수(COUNT)를 구하는 서비스입니다..
	 * @return count
	 */
	public int getBoardCount() {
		Connection conn = getConnection();
		return new BoardDao().getBoardCount(conn);
	}

	/**
	 * DB에 있는 게시글을 조회하는 서비스입니다.
	 * currentPage를 매개변수로 하여 해당 페이지에 있는 게시물만 가져옴으로써 메모리를 절약합니다.
	 * @param currentPage
	 * @param limit
	 * @return bList
	 */
	public ArrayList<Board> selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		return new BoardDao().selectList(conn, currentPage, limit);
	}
	
}
