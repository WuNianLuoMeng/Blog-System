package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class judge_user {
	public boolean judge(register user) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="select * from userinfo";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			boolean flog=false;
			while(rs.next()) {
				register x=new register();
				x.setUsername(rs.getString("name"));
				x.setPassword(rs.getString("password"));
				if(x.getPassword().equals(user.getPassword())&&x.getUsername().equals(user.getUsername())){
					return true;					
				}			
			}
			return false;
		}catch(Exception e)	{
			e.printStackTrace();
		}
		return false;
	}
}
