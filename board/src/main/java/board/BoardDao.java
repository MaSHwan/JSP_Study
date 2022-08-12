package board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import common.JdbcUtill;

public class BoardDao {
	private JdbcUtill ju;// DB����
	private ResultSet rs;
	
	public BoardDao() {
		ju = JdbcUtill.getInstance();
	}

	// ���� (C)
	public int insert(BoardVO vo) { // BoardVOŬ�������� �޾ƿ�
		Connection con = null;
		PreparedStatement pstmt = null;
		int ret = -1; // ������ ������ -1�� �����̵�
		String query = "insert into board(num, title, writer, content, regdate, cnt) values(board_seq.nextval,  ?, ?, ?, sysdate, 0)";
		try {
			con = ju.getConnection();
			pstmt = con.prepareStatement(query); // con���κ��� prepareStatement�� �ҷ� ����
			pstmt.setString(1, vo.getTitle()); // ù��° �Ķ���� ���ε�(?) ���� ����
			pstmt.setString(2, vo.getWriter()); // �ι�° ���ε� ����
			pstmt.setString(3, vo.getContent()); // ����° ���ε� ����
			ret = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {

				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {

				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return ret;
	}

	// ��ȸ (R)
	
	public List<BoardVO> selectAll() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String query = "select num, title, writer, content, regdate, cnt from board order by num desc";
		ArrayList<BoardVO> ls = new ArrayList<BoardVO>(); // Ŀ���� ����� ����Ʈ�� ����������ؼ� ����
		try {
			con = ju.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				BoardVO vo = new BoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						new Date(rs.getDate(5).getTime()), rs.getInt(6));

				ls.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs != null) {

				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {

				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {

				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return ls;
	}
	
	// ��ȸ (R)
	public BoardVO selectOne(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO vo = null;
		String query = "select num, title, writer, content, regdate, cnt from board where num = ?";
		ArrayList<BoardVO> ls = new ArrayList<BoardVO>(); // Ŀ���� ����� ����Ʈ�� ����������ؼ� ����
		try {
			con = ju.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				 vo = new BoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						new Date(rs.getDate(5).getTime()), rs.getInt(6));

				ls.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs != null) {

				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {

				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {

				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return vo;
	}
	// ���� (U)

	// ���� (D)
}
