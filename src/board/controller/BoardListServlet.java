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
import board.model.vo.PageInfo;

/**
 * 게시판 서블릿입니다.
 * 
 * @author user1
 */
@WebServlet("/list.bo")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardListServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BoardService bService = new BoardService();
		
		// ------------------------------------------------------------
		// 이하 페이징 처리입니다.
		// 페이징 처리는 현재 페이지 기준 좌우로 4페이지씩 출력하게합니다.
		// 단, 첫페이지와 마지막 페이지의 경우 다르게 작동합니다.
		
		int countBoard = bService.getBoardCount(); // 게시글의 수
		
		int limit = 20; // 한 페이지에 출력할 게시글의 개수입니다.
		int maxPage = 0; // 최대 페이지의 수입니다.
		int currentPage = 0; // 현재 페이지 인덱스입니다.
		int startPage = 0; // 현재 페이지에서 범위 안의 가장 이전으로의 페이지 인덱스입니다.
		int endPage = 0; // 현재 페이지에서 범위 안의 가장 바깥으로의 페이지 인덱스입니다.
		
		maxPage = (int) (Math.ceil((double) countBoard / limit));
		
		if(request.getParameter("currentPage") == null) currentPage = 1;
		else currentPage = Integer.parseInt(request.getParameter("currentPage")); 
		
		// 현재 페이지에서 좌우로 보여질 페이지의 개수입니다.
		endPage = currentPage + 5;
		startPage = currentPage - 5;

		// 만약 현재 페이지가 5 이하일 경우에는 범위가 1~10이 됩니다.
		if (currentPage <= 5) {
			startPage = 1;
			endPage = startPage + 10;
		}
		
		// 만약 현재 페이지가 끝에서 5 상일 경우에는 범위가 끝-9 ~ 끝이 됩니다.
		if (currentPage > maxPage - 5) {
			startPage = maxPage - 10;
			endPage = maxPage;
		}
		
		// endPage가 maxPage를 넘어설 경우의 endPage범위 조정입니다.
		if (endPage > maxPage)
			endPage = maxPage;
		
		// startPage가 0 이하로 범위를 벗어날 경우 startPage의 범위 조정입니다.
		if (startPage <= 0)
			startPage = 1;
		
		PageInfo pageInfo = new PageInfo(countBoard, limit, currentPage, maxPage, startPage, endPage);

		// 이상 페이징처리입니다.
		
		// ------------------------------------------------------------
		
		// 이하 게시글을 DB에서 불러옵니다.
		// 현재 페이지를 매개변수로 하여 해당 페이지에 관련된 게시글만 불러옴으로써 메모리를 절약합니다.
		
		ArrayList<Board> bList = bService.selectList(currentPage, limit);
		String page = "";
		if(bList != null) {
			page = "views/board/boardListView.jsp";
			request.setAttribute("bList", bList);
			request.setAttribute("pageInfo", pageInfo);
			
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시판 목록 조회 실패!");
		}
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
