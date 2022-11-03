package BeansExercise;

public class Quote
{
    private long id;
    private int author_id;
    private String content;

    public Quote(){}

    public Quote(long id, int author_id, String content) {
        this.id = id;
        this.author_id = author_id;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(int author_id) {
        this.author_id = author_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
