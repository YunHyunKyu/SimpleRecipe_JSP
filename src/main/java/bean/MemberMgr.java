package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberMgr {
	DBConnectionMgr pool = null;
	
	public MemberMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public boolean isIdCheck(String id) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = pool.getConnection();
			String sql = "select * from member where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			flag = rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, ps, rs);
		}
		
		return flag;
	}
	
	public boolean insertMember(MemberDTO dao) {
		boolean insertFlag = false;
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = pool.getConnection();
			String sql = "insert into member values(?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dao.id);
			ps.setString(2, dao.pw);
			ps.setString(3, dao.job);
			ps.setString(4, dao.email);
			ps.setBoolean(5, dao.addChk);
			
			if(ps.executeUpdate() == 1) {
				insertFlag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, ps);
		}
		
		return insertFlag;
	}
	
	public boolean loginMember(String id, String pw) {
		boolean loginFlag = false;
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = pool.getConnection();
			String sql = "select id, pw from member where id = ? and pw = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			
			rs = ps.executeQuery();
			
			loginFlag = rs.next();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, ps, rs);
		}
		
		return loginFlag;
	}
}
