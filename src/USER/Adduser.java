package USER;
import java.sql.*;
public class Adduser {
	public int adduser(register user)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="insert into userinfo(name,password)values(?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,user.getUsername());
			ps.setString(2,user.getPassword());
			int row=ps.executeUpdate();			
			ps.close();
			conn.close();
			return row;
			
		}catch(Exception e)
		{
			System.out.println("×¢²áÊ§°Ü!");
			e.printStackTrace();
			return 0;
		}
	}
}
