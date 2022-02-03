
public class Post{
	
	 public Post(String title, String text, String category, String username) {
		super();
		this.title = title;
		this.text = text;
		this.category = category;
		this.username = username;
	}

	 public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getText() {
			return text;
		}
		public void setText(String text) {
			this.text = text;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
}

