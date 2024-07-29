package fec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt;

	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";

	public void open(){
		try {
			Class.forName(JDBC_DRIVER);//1단계
			conn = DriverManager.getConnection(JDBC_URL,"jwbook","1234"); //2단계
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean loginCheck(String id, String pwd) {
		open();// 1,2 단계
		boolean lc=false;
		
		try {
			pstmt = conn.prepareStatement("select * from member where id=? and pwd=?");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
	
			if(rs.next()) { // 회원 맞음
              lc = true;
			}
			else { //회원 아님
			  lc = false;	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return lc;
	}
	
	
	public void insert(Member m) { // 
		open();
		String sql = "INSERT INTO member(name, id, pwd, email, phone) values(?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getId());
			pstmt.setString(3, m.getPwd());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public void deleteOneMember(String id) { // 회원(id) 1명 삭제
		open();
		String sql = "delete from member where id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	//******************************************************
	public void memberUpdate(String id, String email, String phone) { // 회원(id) 1명 수정
		open();
		String sql = "update member set email=?, phone=? where id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, phone);
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
    //********************************************************
	
	public List<Member> getAll() { 
		open();// 1,2 단계
		List<Member> members = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement("select * from member");
			ResultSet rs = pstmt.executeQuery();
	
			while(rs.next()) {
				Member m = new Member();
				m.setName(rs.getString("name"));
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setPhone(rs.getString("phone"));
				m.setEmail(rs.getString("email"));
						
				members.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return members;
	}
	
	//****************************************************
	
	public Member getOneMember(String id) { 
		open();// 1,2 단계
		Member m = new Member();
		
		try {
			pstmt = conn.prepareStatement("select * from member where id = ?");
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
	
			if(rs.next()) {								
				m.setName(rs.getString("name"));
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setPhone(rs.getString("phone"));
				m.setEmail(rs.getString("email"));									
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return m;
	}
	
}








