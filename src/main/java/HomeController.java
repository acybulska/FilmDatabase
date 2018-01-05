import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.util.List;

@Controller
public class HomeController {
    List<String> titles;
    Root root;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getData() {

        List<String> titles = GetTitles();

        ModelAndView model = new ModelAndView("index");
        model.addObject("titles", titles);

        return model;

    }

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

    public List<String> GetTitles()
    {
        ReadXml();
        for (Film film: root.films.film) {
            titles.add(new String(film.title));
            System.out.println(film.title + " " + film.director + ": " + film.year +"\n");
        }
        return titles;
    }
}
