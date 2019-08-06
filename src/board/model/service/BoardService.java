package board.model.service;

import static common.JDBCTemplate.*;

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

	/**
	 * DB에 있는 게시물 하나를 가져와서 상세보기하는 서비스입니다.
	 * boardNo를 매개변수로하여 해당 게시글을 참조합니다.
	 * @param boardNo
	 * @return board
	 */
	public Board selectBoard(int boardNo) {
		Connection conn = getConnection();
		return new BoardDao().selectBoard(conn, boardNo);
	}

	/**
	 * 게시글 작성 서비스 입니다.
	 * @param board
	 * @return result
	 */
	public int insertBoard(Board board) {
		Connection conn = getConnection();
		int result = new BoardDao().insertBoard(conn, board);
		if(result>0)commit(conn);
		else rollback(conn);
		return result;
	}
	
}
