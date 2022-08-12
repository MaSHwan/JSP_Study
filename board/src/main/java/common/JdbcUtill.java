package common;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JdbcUtill {
	private static JdbcUtill instance = new JdbcUtill();
	
	private static DataSource ds; // ds에 데이터소스 연결시켜야함
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 성공");
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/myOracle");
			System.out.println("Connection Pool 생성");
		}catch(ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		}catch(NamingException ne) {
			ne.printStackTrace();
		}
	}
	
	private JdbcUtill() {}
	
	public static JdbcUtill getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws SQLException{
		return ds.getConnection(); // 풀에서 커넥션 반환
	}
}
