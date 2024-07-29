package fec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
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
	
	
	public void insert(Board b) { // 
		open();
		String sql = "INSERT INTO board(title, content, writer) values(?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getWriter());
			
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public void deleteOneMember(String title) { // 회원(id) 1명 삭제
		open();
		String sql = "delete from board where title = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	//******************************************************
	public void boarardUpdate(String title, String content, String writer) { // 회원(id) 1명 수정
		open();
		String sql = "update board set content=?, writer=? where title = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  content);
			pstmt.setString(2, writer);
			pstmt.setString(3,  title);
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
    //********************************************************
	
	public List<Board> getAll() { 
		open();// 1,2 단계
		List<Board> boards = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement("select * from board");
			ResultSet rs = pstmt.executeQuery();
	
			while(rs.next()) {
				Board b = new Board();
				b.setBid(rs.getInt("bid"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setWriter(rs.getString("writer"));
						
				boards.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return boards;
	}
	
	//****************************************************
	
	public Board getOneBoadr(String title) { 
		open();// 1,2 단계
		Board b = new Board();
		
		try {
			pstmt = conn.prepareStatement("select * from board where title = ?");
			pstmt.setString(1, title);
			
			ResultSet rs = pstmt.executeQuery();
	
			if(rs.next()) {								
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setWriter(rs.getString("writer"));								
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return b;
	}
	
}








