package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.action.components.BoardDeleteAction;
import net.board.action.components.BoardDetailAction;
import net.board.action.components.BoardInsertAction;
import net.board.action.components.BoardListAction;
import net.board.action.components.BoardModifyAction;
import net.board.action.components.BoardModifyView;
import net.board.action.components.BoardReplyAction;
import net.board.action.components.BoardReplyView;

public class ActionService {
	public ActionForward actionControl(String actionSelect, ActionForward forward, HttpServletRequest request,
			HttpServletResponse response) {
		
		Action action = null;		
		
		if (actionSelect == "insertAction") {
			action = new BoardInsertAction();
			forward = actionExecute(action, forward, request, response);
			
		} 
		else if (actionSelect == "replyAction") {
			action = new BoardReplyAction();
			forward = actionExecute(action, forward, request, response);
			
		} 
		else if (actionSelect == "replyView") {
			action = new BoardReplyView();
			forward = actionExecute(action, forward, request, response);
			
		} 
		else if (actionSelect == "modify") {
			System.out.println("modify");
			action = new BoardModifyView();
			forward = actionExecute(action, forward, request, response);
			
		}
		else if (actionSelect == "modifyAction") {
			action = new BoardModifyAction();
			forward = actionExecute(action, forward, request, response);
			
		} 
		else if (actionSelect == "deleteAction") {
			System.out.println("delete");
			action = new BoardDeleteAction();
			forward = actionExecute(action, forward, request, response);
			
		} 
		else if (actionSelect == "list") {
			System.out.println("list");
			action = new BoardListAction();
			forward = actionExecute(action, forward, request, response);
			System.out.println(forward.getPath());
			
		}
		else if (actionSelect == "detailAction") {
			action = new BoardDetailAction();
			forward = actionExecute(action, forward, request, response);
			
		} 
		else {
			forward = null;
		}
		return forward;
	}
	
	private ActionForward actionExecute(Action action, ActionForward forward, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			System.out.println("actionExecute");
			forward = action.execute(request, response);
			return forward;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
