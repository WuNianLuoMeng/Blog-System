package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Look_blog {
	static public String title="";
	static public String content="";
	static public String date="";
	static public String name="";
	static public String value="";
	static public int ID=-1;
	public void search(String Time) {
		String a[]=Time.split("/");
		String s=a[0]+" "+a[1];
		date=s;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username="root";
			String password="981014";
			Connection conn=DriverManager.getConnection(url, username, password);
			String sql="select * from write_blog";
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()) {
				if(s.equals(rs.getString("blog_date"))){
					title=rs.getString("title");
					content=rs.getString("content");
					name=rs.getString("name");
					ID=rs.getInt("id");
					break;
				}			
			}
		}catch(Exception e)	{
			e.printStackTrace();
		}
	}
	public String GetTitle() {
		return title;
	}
	public String GetContent() {
		return content;
	}
	public String GetDate() {
		return date;
	}
	public String Getname() {
		return name;
	}
	public int GetID() {
		return ID;
	}
}
