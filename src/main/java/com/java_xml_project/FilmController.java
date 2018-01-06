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
        Film film = filmRepository.getFilm(filmId);
        ModelAndView model = new ModelAndView("film");  // Needs a correct view ere
        model.addObject("film",film);
        model.addObject("rating",filmRepository.calculateRating(film));
        return model;
    }

//  Comment adding method. Might not be needed, as the comment section & adding should be visible from film's page
/*    @GetMapping("/addComment")
    public ModelAndView addComment(@ModelAttribute int filmId){
       ModelAndView model = new ModelAndView("commentView");
       model.addObject("filmId",filmId);
       return model;
    }
*/

    @PostMapping("/addComment")
    public ModelAndView postComment(@ModelAttribute Comment comment, @ModelAttribute int filmId){
        Film film = filmRepository.getFilm(filmId);

        ModelAndView model = new ModelAndView("index");
        int index = filmRepository.getRoot().films.film.indexOf(film);
        film.comments.comment.add(comment);
        try {
            filmRepository.getRoot().films.film.set(index,film);
            model.addObject("message","Comment added successfully");
            filmRepository.saveXml();
            return model;
        }catch (Exception e){
            model.addObject("message","Something went wrong");
            return model;
        }
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
