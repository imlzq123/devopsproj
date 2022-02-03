public class User {
	protected String name;
	
	 public User(String name, String title, String text, String category) {
		super();
		this.name = name;
		this.title = title;
		this.text = text;
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	protected String title;
	 protected String text;
	 protected String category;
}