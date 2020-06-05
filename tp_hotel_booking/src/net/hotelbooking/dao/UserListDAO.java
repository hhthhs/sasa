package net.hotelbooking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.hotelbooking.vo.UserListVO;

public class UserListDAO {
	
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public UserListDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("connection !!!!");
		} catch (Exception e) {
			System.out.println("DB 연결 실패 " + e);
			return;
		}
	} // constructor end
	
	// 회원등록	
	public boolean UserListInsert(UserListVO vo) {
		
		int num = 0, result = 0;
		StringBuffer sb = new StringBuffer();
		
		try {			
			sb.append("insert into userlist");
			sb.append(" values(u_seq.nextval, ?, ?, ?, ?, ?, ?");
			
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getU_pwd());
			pstmt.setString(2, vo.getU_name());
			pstmt.setString(3, vo.getU_phone());
			pstmt.setString(4, vo.getU_address());
			pstmt.setInt(5, vo.getU_grade());
			pstmt.setString(6, vo.getU_email());
			
			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0)return false;
			return true;
				
		} catch (Exception e) {
			System.out.println("userlist insert 에러 : " +e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);		
		}
		
		return false;
	} // UserListInsert END
}
