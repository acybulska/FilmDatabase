import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
        "name",
        "score",
        "content"
})

public class Comment {
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String name;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected int score;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String content;
    @XmlAttribute(name = "id")
    protected int id;

    public String getName() {
        return name;
    }

    public void setName(String value) {
        this.name = value;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int value) {
        this.score = value;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String value) {
        this.content = value;
    }

    public int getId() {
        return id;
    }

    public void setId(int value) {
        this.id = value;
    }
}
