package com.member1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class StudentDAO {
	
	DataSource ds;
	private Connection getConnection() {
		Connection conn = null;
		
		try {
			Context initContext = new InitialContext();
			 ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/myoracle");
			 conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println("Connection 생성 실패");
		}
		
		return conn;
	}// 디비 연결
	
	// 아이디 체크
	public boolean idcheck(String id) {
		boolean result = true;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select * from student where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(!rs.next()) result = false;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs != null)try {rs.close();}catch(SQLException s1) {}
			if(pstmt != null)try {pstmt.close();}catch(SQLException s2) {}
			if(conn != null)try {conn.close();}catch(SQLException s3) {}
		}
		return result;
	}// end idcheck
	
	// 우편번호를 데이터베이스에서 검색해서 vector에 저장한 후 리턴해주는 메소드 구현
	public Vector<ZipCodeVO> zipcode(String dong){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			 
		Vector<ZipCodeVO> veclist = new Vector<ZipCodeVO>();
		
		try {
			// DB연결
			conn = getConnection();
			
			// 쿼리 작성
			String strQuery = "select * from zipcode where dong like'" + dong + "%'";
			
			pstmt = conn.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ZipCodeVO tempZipCode = new ZipCodeVO();
				tempZipCode.setZipcode(rs.getString("zipcode"));
				tempZipCode.setSido(rs.getString("sido"));
				tempZipCode.setGugun(rs.getString("gugun"));
				tempZipCode.setDong(rs.getString("dong"));
				tempZipCode.setRi(rs.getString("ri"));
				tempZipCode.setBunji(rs.getString("bunji"));
				
				veclist.addElement(tempZipCode);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs != null)try {rs.close();}catch(SQLException s1) {}
			if(pstmt != null)try {pstmt.close();}catch(SQLException s2) {}
			if(conn != null)try {conn.close();}catch(SQLException s3) {}
		}
		return veclist;
	}
	
	public boolean memberInsert(StudentVO vo) {
	      
	      boolean flag = false;
	      
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      try {
	         
	         conn = getConnection(); // DB연결 메소드 호출
	         String strQuery = "insert into student values(?,?,?,?,?,?,?,?,?,?)";
	         pstmt = conn.prepareStatement(strQuery);
	         
	         pstmt.setString(1, vo.getId());
	         pstmt.setString(2, vo.getPass());
	         pstmt.setString(3, vo.getName());
	         pstmt.setString(4, vo.getPhone1());
	         pstmt.setString(5, vo.getPhone2());
	         pstmt.setString(6, vo.getPhone3());
	         pstmt.setString(7, vo.getEmail());
	         pstmt.setString(8, vo.getZipcode());
	         pstmt.setString(9, vo.getAddress1());
	         pstmt.setString(10, vo.getAddress2());
	         
	         int count = pstmt.executeUpdate();
	         if(count > 0)flag = true;
	         
	      } catch (SQLException s1) {
	         s1.printStackTrace();
	      } catch(Exception e) {
	      e.printStackTrace();
	      }finally {
	         if(rs!=null) try {rs.close();} catch (SQLException s1) { }
	         if(pstmt!=null) try {pstmt.close();} catch (SQLException s2) { }
	         if(conn!=null) try {conn.close();} catch (SQLException s3) { }
	      }
	      
	      return flag;
	   }
	   
	}
	

