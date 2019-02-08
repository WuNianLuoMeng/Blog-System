package USER;
import java.util.*;
import java.sql.*;
import java.io.*;
public class Delete_Blog {
	public int Delete(String Time) {
		int row=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			
			
			String sql="delete from comment where Date=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,Time);
			row=ps.executeUpdate();
			
			sql="delete from write_blog where blog_date=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,Time);
			row=ps.executeUpdate();
			
			
			
			
			
			return row;
		}catch(Exception e)	{
			e.printStackTrace();
			return row;
		}
	}
}
