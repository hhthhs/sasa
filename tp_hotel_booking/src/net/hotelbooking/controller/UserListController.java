package net.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.action.ActionForward;
import net.hotelbooking.action.ActionService;


@WebServlet("/ulc/*")
public class UserListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
//		Action action = null;
		ActionService actionController = new ActionService();		
		
		if( command.equals("userInsert.do")) {
			forward = new ActionForward();
			
			
			
			
			forward.setRedirect(true);
			forward.setPath("/index.html");
		} else if (command.equals("")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/");
			
		} else if( command.equals("/BoardInsertAction.do")) {
			forward = actionController.actionControl("insertAction", forward, request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
