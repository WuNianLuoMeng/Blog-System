package USER;

public class blog {
	private String Username;
	private String Title;
	private String Content;
	private String blog_date;
	private int Id;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getBlog_date() {
		return blog_date;
	}
	public void setBlog_date(String blog_date) {
		this.blog_date = blog_date;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

}
