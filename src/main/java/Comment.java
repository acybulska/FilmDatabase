import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class Comment {
    @XmlElement
    public int filmId;
    @XmlElement
    public String name;
    @XmlElement
    public int score;
    @XmlElement
    public String content;
}
