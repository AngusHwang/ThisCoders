package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;


/**
 * 게시판 서블릿입니다.
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
		
		Board board = new BoardService().selectBoard(boardNo);
		
		String page = "";
		if(board!=null) {
			page = "views/board/boardDetailView.jsp";
			request.setAttribute("board", board);
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
