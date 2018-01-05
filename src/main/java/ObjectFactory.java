import javax.xml.bind.annotation.XmlRegistry;

@XmlRegistry
public class ObjectFactory {
    public ObjectFactory() {
    }

    public Root createRoot() {
        return new Root();
    }


    public Films createRootFilms() {
        return new Films();
    }


    public Film createRootFilmsFilm() {
        return new Film();
    }


    public Comments createRootFilmsFilmComments() {
        return new Comments();
    }


    public Comment createRootFilmsFilmCommentsComment() {
        return new Comment();
    }

}
