package semo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semo.domain.Post;
import semo.service.PostSevice;
import semo.service.logic.PostServiceLogic;

@WebServlet("/postDetail.do")
public class postDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PostSevice service = new PostServiceLogic();
		Post post = service.searchPostByPostId(request.getParameter("postId"));
		request.setAttribute("post", post);
		request.getRequestDispatcher("postDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	}

}
