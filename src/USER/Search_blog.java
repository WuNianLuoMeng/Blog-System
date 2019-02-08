package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Search_blog {
	private int Sum=0;
	public int Getsum(){
		return Sum;
	}
	public blog[] Search() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="select * from write_blog";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			int len=0;
			while(rs.next()) {
				len++;
			}
			Sum=len;
			blog Blog[]=new blog[len];			
			int i=0;
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				blog x=new blog();
				x.setUsername(rs.getString("name"));
				x.setTitle(rs.getString("title"));
				x.setContent(rs.getString("content"));
				x.setBlog_date(rs.getString("blog_date"));
				x.setId(rs.getInt("id"));
				Blog[i]=x;
				i++;
			}
//			System.out.println(Sum);
			return Blog;
		}catch(Exception e)	{
			e.printStackTrace();
		}
		return null;
	}
}
