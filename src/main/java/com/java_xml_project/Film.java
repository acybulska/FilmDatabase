package com.java_xml_project;

import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
        "title",
        "director",
        "year",
        "duration",
        "country",
        "genre1",
        "genre2",
        "cast1",
        "cast2",
        "cast3",
        "cast4",
        "cast5",
        "imdbLink",
        "youtube",
        "poster",
        "comments"
})
public class Film {

    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String title;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String director;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String year;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String duration;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String country;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String genre1;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String genre2;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected String cast1;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String cast2;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String cast3;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String cast4;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String cast5;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String imdbLink;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String youtube;
    @XmlElement(namespace = "https://www.w3schools.com")
    protected String poster;
    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected Comments comments;
    @XmlAttribute(name = "id")
    protected Integer id;

    public String getTitle() {
        return title;
    }

    public void setTitle(String value) {
        this.title = value;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String value) {
        this.director = value;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String value) {
        this.year = value;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String value) {
        this.duration = value;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String value) {
        this.country = value;
    }

    public String getGenre1() {
        return genre1;
    }

    public void setGenre1(String value) {
        this.genre1 = value;
    }

    public String getGenre2() {
        return genre2;
    }

    public void setGenre2(String value) {
        this.genre2 = value;
    }

    public String getCast1() {
        return cast1;
    }

    public void setCast1(String value) {
        this.cast1 = value;
    }

    public String getCast2() {
        return cast2;
    }

    public void setCast2(String value) {
        this.cast2 = value;
    }

    public String getCast3() {
        return cast3;
    }

    public void setCast3(String value) {
        this.cast3 = value;
    }

    public String getCast4() {
        return cast4;
    }

    public void setCast4(String value) {
        this.cast4 = value;
    }

    public String getCast5() {
        return cast5;
    }

    public void setCast5(String value) {
        this.cast5 = value;
    }

    public String getImdbLink() {
        return imdbLink;
    }

    public void setImdbLink(String value) {
        this.imdbLink = value;
    }

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String value) {
        this.youtube = value;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String value) {
        this.poster = value;
    }

    public Comments getComments() {
        return comments;
    }

    public void setComments(Comments value) {
        this.comments = value;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer value) {
        this.id = value;
    }

}
