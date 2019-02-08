package USER;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class init_blog {
	public blog[] judge(register user) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username = "root";
			String password = "981014";
			Connection conn = DriverManager.getConnection(url, username, password);
			String sql = "select * from write_blog";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			String USERNAME = user.USERNAME;
			int len = 0;
			while (rs.next()) {
				if (rs.getString("name").equals(USERNAME))
					len++;
			}
			blog text[] = new blog[len];
			int i = 0;
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				blog x = new blog();
				x.setUsername(rs.getString("name"));
				x.setTitle(rs.getString("title"));
				x.setContent(rs.getString("content"));
				x.setBlog_date(rs.getString("blog_date"));
				x.setId(rs.getInt("id"));
				if (x.getUsername().equals(USERNAME)) {
					text[i] = x;
					i++;
				}
			}
			// System.out.println(text);
			return text;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public blog[] judge1(register user) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
			String username = "root";
			String password = "981014";
			Connection conn = DriverManager.getConnection(url, username, password);
			String sql = "select * from write_blog";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			String USERNAME = register.USERNAME;
			int len = 0;
			while (rs.next()) {
				len++;
			}
			blog text[] = new blog[len];
			int i = 0;
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				blog x = new blog();
				x.setUsername(rs.getString("name"));
				x.setTitle(rs.getString("title"));
				x.setContent(rs.getString("content"));
				x.setBlog_date(rs.getString("blog_date"));
				x.setId(rs.getInt("id"));
				text[i] = x;
				i++;
			}
			return text;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
