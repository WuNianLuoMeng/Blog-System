package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class EDIT {
	public int Edit_Blog(blog article,String Time) {
		int row=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="update write_blog set title=?,content=?,blog_date=? where blog_date=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,article.getTitle());
			ps.setString(2,article.getContent());
			ps.setString(3,article.getBlog_date());
			ps.setString(4,Time);
			row=ps.executeUpdate();			
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
