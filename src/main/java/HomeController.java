import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;


public class HomeController {
    String[] titles=new String[20];
    Root root;

    public void ReadXml()
    {
        try {
            JAXBContext jaxbContext = JAXBContext.newInstance(Film.class);

            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            File xml = new File("src/film.xml");
            root = (Root) unmarshaller.unmarshal(xml);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void ViewTitles()
    {
        for (Film film: root.films) {
            System.out.println(film.title + " " + film.director + ": " + film.year +"\n");
        }
    }
}
