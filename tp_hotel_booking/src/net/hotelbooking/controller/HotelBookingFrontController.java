package net.hotelbooking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.action.ActionForward;
import net.hotelbooking.action.ActionService;

@WebServlet("*.do")
public class HotelBookingFrontController extends HttpServlet 
									implements Servlet {
	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
//		Action action = null;
		ActionService actionController = new ActionService();
		
		if( command.equals("/write.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/board/write.jsp");
		} else if (command.equals("/BoardDelete.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./board/delete.jsp");
			
		} else if( command.equals("/BoardInsertAction.do")) {
			forward = actionController.actionControl("insertAction", forward, request, response);
			
		} else if (command.equals("/BoardReplyAction.do")) {
			forward = actionController.actionControl("replyAction", forward, request, response);

		} else if (command.equals("/BoardModify.do")) {
			forward = actionController.actionControl("modify", forward, request, response);
			
		} else if (command.equals("/BoardReplyView.do")) {
			forward = actionController.actionControl("replyView", forward, request, response);

		} else if (command.equals("/BoardModifyAction.do")) {
			forward = actionController.actionControl("modifyAction", forward, request, response);

		} else if (command.equals("/BoardDeleteAction.do")) {
			forward = actionController.actionControl("deleteAction", forward, request, response);

		} else if (command.equals("/list.do")) {
			forward = actionController.actionControl("list", forward, request, response);

		} else if (command.equals("/BoardDetailAction.do")) {
			forward = actionController.actionControl("detailAction", forward, request, response);

		}
		
		if( forward != null ) {
			if( forward.isRedirect() ) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher d = 
						request.getRequestDispatcher(forward.getPath());
				d.forward(request, response);
			}
		}// out if end
	}// end
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

		
}
