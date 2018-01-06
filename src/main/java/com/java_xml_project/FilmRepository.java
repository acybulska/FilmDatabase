package com.java_xml_project;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class FilmRepository {

    private static FilmRepository filmRepository = null;

    public Root getRoot() {
        return root;
    }

    private Root root;

    private FilmRepository(){
        root = ReadXml();
    }

    public static FilmRepository getFilmRepository() {
        if (filmRepository == null){
            filmRepository = new FilmRepository();
        }
        return filmRepository;
    }

    private Root ReadXml() {
        Root root = new Root();
        try {
            JAXBContext jaxbContext = JAXBContext.newInstance(Root.class);

            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            File xml = new File("film.xml");
            root = (Root) unmarshaller.unmarshal(xml);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return root;
    }

    public Film getRandomFilm(){
        Random rand = new Random();

        int  n = rand.nextInt(root.films.film.size());
        return root.films.film.get(n);
    }

    public List<Film> getTopThree(){
        List<Film> films = new ArrayList<>();

        films.add(root.films.film.get(0));
        films.add(root.films.film.get(1));
        films.add(root.films.film.get(2));
        return films;
    }
}
