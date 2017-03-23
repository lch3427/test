package semo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semo.domain.SemoHome;
import semo.service.SemoHomeService;
import semo.service.logic.SemoHomeServiceLogic;


@WebServlet("/postlist.do")
public class SemoHomePostListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		SemoHomeService service = new SemoHomeServiceLogic();
		
		//����̶� ����Ȩ�̶� ���� ������ ��~
		
		HttpSession session = req.getSession();
		String userId = "chee";
		String guestId = null;
		if((String)session.getAttribute("semoHomeHost") != null){
			guestId = (String)session.getAttribute("semoHomeHost");
		}
		
		if(!userId.equals(guestId) && guestId!=null){
			userId = guestId;
		}
		
		SemoHome semoHome = service.searchSemoHome(userId);
		
		req.setAttribute("posts", semoHome.getPosts());
		req.setAttribute("semoHomeId", semoHome.getId());
		
		req.getRequestDispatcher("shPostList.jsp").forward(req, resp);
		
	}

}
