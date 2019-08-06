package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;


@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		Member member = new Member();
		member.setUserId(userId);
		member.setUserPwd(userPwd);
		
		Member loginUser = new MemberService().login(member);
		
		String page = "";
		if(loginUser != null) { //loginUser값이 있을때 : 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			request.setAttribute("member", member);
			
			System.out.println("로그인 성공"); // 로그인 되었는지 확인용(나중에 삭제)
			
		}else if(loginUser != member) { //loginUser값이없을때 : 로그인 실패(회워가입이 안되어있거나 잘못 입력시
			request.setAttribute("msg", "아이디/비밀번호를 확인하세요.");
			
			request.getRequestDispatcher("views/member/loginForm.jsp").forward(request, response);
		}
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
