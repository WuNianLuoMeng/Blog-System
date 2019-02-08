package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Comment_msg {
	private int ID;
	private String content;
	private String comment_name;
	private String user_name;
	private String Date;
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	private int staus;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getStaus() {
		return staus;
	}
	public void setStaus(int staus) {
		this.staus = staus;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getComment_name() {
		return comment_name;
	}
	public void setComment_name(String comment_name) {
		this.comment_name = comment_name;
	}
	public int submit(Comment_msg msg) {
		int row=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="insert into comment(blog_id,comment_name,comment_content,user_name,staus,Date)values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,msg.getID());
			ps.setString(2,msg.getComment_name());
			ps.setString(3,msg.getContent());
			ps.setString(4, other.comment_userclass);
			ps.setInt(5, msg.getStaus());
			ps.setString(6, msg.getDate());
			row=ps.executeUpdate();			
			ps.close();
			conn.close();
			return row;			
		}catch(Exception e)
		{
			System.out.println("∆¿¬€ ß∞‹!");
			e.printStackTrace();
			return row;
		}
	}
	public Comment_msg[] Return(int ID) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username = "root";
			String password = "981014";
			Connection conn = DriverManager.getConnection(url, username, password);
			String sql = "select * from comment";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			int len = 0;
			while (rs.next()) {
				if (rs.getInt("blog_id")==ID)
					len++;
			}
			Comment_msg text[]=new Comment_msg[len];
			int i = 0;
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				if(rs.getInt("blog_id")==ID)
				{
					Comment_msg x = new Comment_msg();
					x.setComment_name(rs.getString("comment_name"));
					x.setContent(rs.getString("comment_content"));
					x.setID(rs.getInt("blog_id"));
					x.setStaus(rs.getInt("staus"));
					x.setUser_name(rs.getString("user_name"));
					text[i] = x;
					i++;
				}
			}
			return text;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
