package fec;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

@WebServlet("/fec")
public class FinalExamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FinalExamController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action= request.getParameter("action");
		System.out.println("action="+action);
		String view = null;
		
		HttpSession sess = request.getSession();
		MemberDAO mdao = new MemberDAO();
		BoardDAO  bdao = new BoardDAO();
		
		switch(action) {
		   case "login": //
			   String id = request.getParameter("id");
			   String pwd = request.getParameter("pwd");
			   
			   // 회원이 맞는지 검사 => MemberDAO.java(모델) 이용하여 
//			   MemberDAO mdao = new MemberDAO();
			   boolean lc = mdao.loginCheck(id, pwd);
			   
			   if(lc == true) { // 회원인경우
				   sess.setAttribute("id", id);
			   } else {
				   
			   }
			   
			   view = "index.jsp"; //시작홈페이지 
			   break;
			   
		   case "loginForm" : //로긴하는 화면 보여줌
		       view = "login.jsp";	   
			   break;
			   
		   case "logout" : 
			   sess.removeAttribute("id"); //로긴성공한 id를 지움
			   view = "index.jsp"; //시작 페이지로 감
			   break;
		
		   case "memberForm" : //회원가입을 위한 폼을 보여줌	
			   view = "register.jsp";
			   break;
			   
		   case "boardForm" : //회원가입을 위한 폼을 보여줌	
			   view = "boardwrite.jsp";
			   break;
		   case "contactForm":
			   // 글쓰기 폼으로 
			   view = "contact.jsp";
			   break;
		   case "memberInsert" : // 회원을 DB에 등록
			   Member m = new Member();
			  
			   try {
				   BeanUtils.populate(m, request.getParameterMap());
			   } catch(Exception e) {
				   e.printStackTrace();
			   }	
			   
			   mdao.insert(m);	// DB에 회원 등록
			   
			   view = "index.jsp";
			   break;
			   
		   case "memberList": // 회원리스트 보여주기
				
				List<Member> members = mdao.getAll();
				
				// View에게 넘겨줌
				
				sess.setAttribute("members", members);
				view = "memberList.jsp";
				
			   break;
			   
		   case "boardList": // 게시판리스트 보여주기
			   
			   List<Board> boards = bdao.getAll();
			   
			   // View에게 넘겨줌
			   
			   sess.setAttribute("boards", boards);
			   view = "boardList.jsp";
			   
			   break;
		
		   case "boderInsert" : // 게사판을 DB에 등록
			   Board b = new Board();
			  
			   try {
				   BeanUtils.populate(b, request.getParameterMap());
			   } catch(Exception e) {
				   e.printStackTrace();
			   }	
			   
			   bdao.insert(b);	// DB에 회원 등록
			   
			   view = "index.jsp";
			   break;
		   case "memberDelete" : //선택한 회원 1명 삭제 
			   String id2 = request.getParameter("id");
			   
			   mdao.deleteOneMember(id2); //  삭제 성공
			   
			   List<Member> members2 = mdao.getAll();
								
			   sess.setAttribute("members", members2);
			   view = "memberList.jsp";
			   break;
			   
		   case "memberUpdateForm" : 
			   // 1 수정대상을 DB에서 읽어옴
			   String id3 = request.getParameter("id");
			   Member m2 = mdao.getOneMember(id3);

			   // 2 읽어온 정보를 화면에 보여주고 수정토록 한다.
			   sess.setAttribute("m2", m2);
			   view = "memberUpdateForm.jsp";
			   break;	
			   
		   case "memberUpdate" :
			   String id4 = request.getParameter("id");
			   String email4 = request.getParameter("email"); 
			   String phone4 = request.getParameter("phone");
			   
			   mdao.memberUpdate(id4, email4, phone4);
			   
			   List<Member> members4 = mdao.getAll();
				
			   sess.setAttribute("members", members4);
			   view = "memberList.jsp";
			   break;
		   case "BoardUpdateForm" : 
			   // 1 수정대상을 DB에서 읽어옴
			   String bd1 = request.getParameter("title");
			   Board bd2 = bdao.getOneBoadr(bd1);

			   // 2 읽어온 정보를 화면에 보여주고 수정토록 한다.
			   sess.setAttribute("bd2", bd2);
			   view = "boarardUpdate.jsp";
			   break;	  
		   case "boderUpdate" :
			   String tit = request.getParameter("title");
			   String writer = request.getParameter("writer"); 
			   String content = request.getParameter("content");
			   
			   bdao.boarardUpdate(tit, writer, content);
			   
			   List<Board> boards2 = bdao.getAll();
				
			   sess.setAttribute("boards",boards2);
			   view = "boardList.jsp";
			   break;
		   case "boderDelete" : //선택한 회원 1명 삭제 
			   String tit2 = request.getParameter("title");
			   
			   bdao.deleteOneMember(tit2); //  삭제 성공
			   
			   List<Board> boards3 = bdao.getAll();
								
			   sess.setAttribute("boards", boards3);
			   view = "boardList.jsp";
			   break;   
		}
		
		response.sendRedirect(view);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}








