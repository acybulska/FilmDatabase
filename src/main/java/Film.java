import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class Film {
    @XmlAttribute
    public int id;
    @XmlElement
    public String title;
    @XmlElement
    public String director;
    @XmlElement
    public String year;
    @XmlElement
    public String country;
    @XmlElement
    public String genre1;
    @XmlElement
    public String genre2;
    @XmlElement
    public String cast1;
    @XmlElement
    public String cast2;
    @XmlElement
    public String cast3;
    @XmlElement
    public String cast4;
    @XmlElement
    public String cast5;

    /*
    public void setTitle(String title) {this.title=title;}
    public void setDirector(String director) {this.director=director;}
    public void setYear(String year) {this.year=year;}
    public void setCountry(String country) {this.country=country;}
    public void setGenre(String genre)
    {
        if(genre1=="")
        {
            this.genre1=genre;
        }
        else
        {
            this.genre2=genre;
        }

    }
    public void setCast(String cast1, String cast2, String cast3, String cast4, String cast5)
    {
        this.cast1=cast1;
        this.cast2=cast2;
        this.cast3=cast3;
        this.cast4=cast4;
        this.cast5=cast5;
    }

    public String getTitle() {return title;}
    public String getDirector() {return director;}
    public String getYear() {return year;}
    public String getCountry() {return country;}
    public String getGenre1() {return genre1;}
    public String getGenre2() {if(genre2!="") return genre2; else return "";}
    */
}
