package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class write_blog {
	public int addblog(blog article)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="insert into write_blog(name,title,content,blog_date)values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,article.getUsername());
			ps.setString(2,article.getTitle());
			ps.setString(3,article.getContent());
			ps.setString(4, article.getBlog_date());
			int row=ps.executeUpdate();			
			ps.close();
			conn.close();
			return row;
			
		}catch(Exception e)
		{
			System.out.println("Ð´²©¿ÍÊ§°Ü!");
			e.printStackTrace();
			return 0;
		}
	}
}
