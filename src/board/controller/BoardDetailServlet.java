package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import member.model.vo.Avatar;


/**
 * 게시판 내용 상세보기 서블릿입니다.
 * 
 * @author crckrjck
 */
@WebServlet("/detail.bo")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardDetailServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ArrayList<Object> al = new BoardService().selectBoard(boardNo);
		Board board = null;
		Avatar avatar = null;
		
		// 객체에 담긴 오브젝트를 맞는 VO객체로 형변환해줍니다.
		for (Object obj : al) {
			if(obj instanceof Board) board = (Board)obj;
			if(obj instanceof Avatar) avatar = (Avatar)obj;
		}
		String page = "";
		if(board!=null) {
			page = "views/board/boardDetailView.jsp";
			request.setAttribute("board", board);
			request.setAttribute("avatar", avatar);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시물 상세조회 에러");
		}
		request.getRequestDispatcher(page).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
