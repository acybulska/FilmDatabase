package com.java_xml_project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

import static com.java_xml_project.FilmRepository.getFilmRepository;

@Controller
public class FilmController {

    private List<String> titles = new ArrayList<>();
    private FilmRepository filmRepository = getFilmRepository();

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getHomePage() {
        ModelAndView model = new ModelAndView("index");
        List<Film> topThree = filmRepository.getFirstThree();
        List<Film> ratings = filmRepository.sortByRating();
        model.addObject("films", topThree);
        model.addObject("ratingFilms", ratings);
        return model;
    }

    @RequestMapping(value = "/data", method = RequestMethod.GET)
    public ModelAndView getData() {
        List<String> titles = GetTitlesList();
        ModelAndView model = new ModelAndView("filmsList");
        model.addObject("titles", titles);
        return model;
    }

    @RequestMapping(value = "/data/{param}", method = RequestMethod.GET)
    public ModelAndView getData(@PathVariable String param) {
        List<String> titles = GetTitlesList();
        ModelAndView model = new ModelAndView("filmsList");
        model.addObject("titles", titles);
        return model;
    }

    @RequestMapping(value = "/movie/{filmId}", method = RequestMethod.GET)
    public ModelAndView showFilm(@PathVariable("filmId") int filmId){
        ArrayList<Integer> scores = new ArrayList<>();
        scores.add(1); scores.add(2); scores.add(3); scores.add(4); scores.add(5); scores.add(6); scores.add(7); scores.add(8); scores.add(9); scores.add(10);
        Film film = filmRepository.getFilm(filmId);
        ModelAndView model = new ModelAndView("film");
        Comment comment = new Comment();
        comment.setId(filmId);

        model.addObject("film",film);
        model.addObject("rating",filmRepository.calculateRating(film));
        model.addObject("comment",comment);
        model.addObject("scores",scores);
        return model;
    }

    @PostMapping("/addComment")
    public ModelAndView postComment(@ModelAttribute("comment") Comment comment, @ModelAttribute Film selectedFilm){
        Film film = filmRepository.getFilm(selectedFilm.id);
        int index = filmRepository.getRoot().films.film.indexOf(film);
        film.comments.addComment(comment);
        try {
            filmRepository.getRoot().films.film.set(index,film);
            filmRepository.saveXml();
            return new ModelAndView("redirect:/movie/" + selectedFilm.id);
        }catch (Exception e){
            return new ModelAndView("redirect:/movie/" + selectedFilm.id);
        }
    }

    @RequestMapping(value = "/search")
    public ModelAndView searchMovies(@RequestParam("query") String query){
        List<Film> films = filmRepository.findFilmByTitle(query);
        ModelAndView model = new ModelAndView("filmsList");
        model.addObject("films", films);
        return model;
    }

    private List<String> GetTitlesList() {
        List<Film> films = filmRepository.sortAlphabetically();
        for (Film film: films){
            titles.add(film.title);
            System.out.println(film.title + " " + film.director + ": " + film.year +"\n");
        }
        return titles;
    }
}
