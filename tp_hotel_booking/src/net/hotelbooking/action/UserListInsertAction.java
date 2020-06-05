package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.UserListVO;

public class UserListInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UserListDAO dao = new UserListDAO();
		UserListVO vo = new UserListVO();		

		ActionForward forward = new ActionForward();			
	
		boolean result = false;
		
		try {
			
			vo.setU_address(u_address);	
			
			result = dao.boardInsert(vo);  //
			System.out.println("dao 갔다 왔니? result : " + result);
			
			if( result == false ) {
				System.out.println("게시판 등록 실패!");
				return null;
			}
			System.out.println("게시판 등록 완료");
			
			forward.setRedirect(true);
			forward.setPath("./list.do");
			return forward;
													
		} catch (Exception e) {
			e.printStackTrace();
		} // try end			
		
		return null;
	}
}
