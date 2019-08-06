package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import member.model.vo.Member;

/**
 * 게시글 작성 완료 후 게시글을 DB에 보내는 서블릿입니다.
 * @author crckrjck
 */
@WebServlet("/insert.bo")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardInsertServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String content= request.getParameter("content");
		
		String writer = ((Member)request.getSession().getAttribute("loginUser")).getUserNickname();
		
		Board board = new Board();
		board.setCatName(category);
		board.setBoardTitle(title);
		board.setBoardContent(content);
		board.setBoardWriter(writer);
		
		int result = new BoardService().insertBoard(board);
		if(result>0)response.sendRedirect("list.bo");
		else {
			request.setAttribute("msg", "게시글 작성 에러");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
