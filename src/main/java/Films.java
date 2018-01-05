import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
        "film"
})
public class Films {

    public void setFilm(ArrayList<Film> film) {
        this.film = film;
    }

    @XmlElement(namespace = "https://www.w3schools.com")
    protected List<Film> film;

    public Films() {
        this.film = film;
    }

    public List<Film> getFilm() {
        if (film == null) {
            film = new ArrayList<Film>();
        }
        return this.film;
    }
}