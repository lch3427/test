package semo.controller;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semo.domain.Image;
import semo.domain.Post;
import semo.service.PostSevice;
import semo.service.logic.PostServiceLogic;

@WebServlet("/image.do")
public class ChoiceImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		PostSevice service = new PostServiceLogic();
		
		Post post = service.searchPostByPostId(request.getParameter("postId"));

//		이프문써서 왼쪽인지 오른쪾인지

		String fileName = null;
		InputStream in = null;
		Image rImage = post.getChoiceRight().getImage();
		

		if (rImage != null) {
			response.setContentType(rImage.getContentType());
			String imagePath = getServletContext().getInitParameter("imagePath");
			fileName = imagePath + "/" + rImage.getFileName();

			in = new BufferedInputStream(new FileInputStream(fileName));
		}
		
		OutputStream out = response.getOutputStream();
		
		byte [] buf = new byte[8096];
		int readByte = 0;
		while((readByte = in.read(buf))>-1){
			out.write(buf, 0, readByte);
			
		}
		in.close();
		out.close();
	}

}
