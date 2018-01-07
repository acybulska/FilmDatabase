package com.java_xml_project;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.util.*;

public class FilmRepository {

    private static FilmRepository filmRepository = null;

    public Root getRoot() {
        return root;
    }

    private Root root;

    private  String fileLocation = "C:\\Users\\miki\\Desktop\\film.xml";

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
            File xml = new File(fileLocation);
            root = (Root) unmarshaller.unmarshal(xml);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return root;
    }

    void saveXml() {
        try {
            File xml = new File(fileLocation);
            JAXBContext jaxbContext = JAXBContext.newInstance(Root.class);
            Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
            jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);

            jaxbMarshaller.marshal(root, xml);

        } catch (JAXBException e) {
            e.printStackTrace();
        }
    }

    public Film getRandomFilm(){
        Random rand = new Random();
        int  n = rand.nextInt(root.films.film.size());
        return root.films.film.get(n);
    }

    public Film getFilm(int id){
        Film selectedFilm = root.films.film.stream().filter(o -> o.id == id).findAny().get();
        return selectedFilm;
    }

    public List<Film> getFirstThree(){
        List<Film> films = new ArrayList<>();
        films.add(root.films.film.get(0));
        films.add(root.films.film.get(1));
        films.add(root.films.film.get(2));
        return films;
    }

    public List<Film> sortAlphabetically(){
        List<Film> films = root.getFilms().film;
        films.sort(Comparator.comparing(o -> o.title));
        return films;
    }

    public List<Film> sortByDate(){
        List<Film> films = root.getFilms().film;
        films.sort(Comparator.comparing(o -> o.year));
        return films;
    }

    public List<Film> sortByNumberOfVotes(){
        List<Film> films = root.getFilms().film;
        films.sort(Comparator.comparing(o -> o.comments.comment.size()));
        return films;
    }

    public List<Film> sortByRating(){
        List<Film> films = root.getFilms().film;
        Collections.sort(films, Comparator.comparingDouble(Film::getRating).reversed());
        return films;
    }

    public double calculateRating(Film film){
        return film.comments.comment.stream().filter(o -> o.score >0).mapToDouble(o -> o.getScore()).sum()/film.comments.comment.size();
    }

    public List<Film> findFilmByTitle(String query)
    {
        List<Film> output = new ArrayList<>();
        for (Film a: root.films.film) {
            if (a.getTitle().toLowerCase().contains(query.toLowerCase()))
                output.add(a);
        }
        return output;
    }
}