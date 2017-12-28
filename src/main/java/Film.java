public class Film {
    private String title;
    private String director;
    private String year;
    private String country;
    private String cast1;
    private String cast2;
    private String cast3;
    private String cast4;
    private String cast5;

    public Film()
    {

    }

    public void setTitle(String title) {this.title=title;}
    public void setDirector(String director) {this.director=director;}
    public void setYear(String year) {this.year=year;}
    public void setCountry(String country) {this.country=country;}
    public void setCast(String cast1, String cast2, String cast3, String cast4, String cast5)
    {
        this.cast1=cast1;
        this.cast2=cast2;
        this.cast3=cast3;
        this.cast4=cast4;
        this.cast5=cast5;
    }
}
