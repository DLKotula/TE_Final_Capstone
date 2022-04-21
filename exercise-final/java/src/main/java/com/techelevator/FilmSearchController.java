package com.techelevator;

import com.techelevator.dao.FilmDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * FilmSearchController
 */
@Controller
public class FilmSearchController {

    @Autowired
    FilmDao filmDao;

<<<<<<< HEAD:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-student/java/src/main/java/com/techelevator/FilmSearchController.java
    @RequestMapping(path = "/filmList", method = RequestMethod.GET)
=======
    @RequestMapping(path = "/filmForm", method = RequestMethod.GET)
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-final/java/src/main/java/com/techelevator/FilmSearchController.java
    public String showFilmSearchForm() {
        return "filmList";
    }

<<<<<<< HEAD:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-student/java/src/main/java/com/techelevator/FilmSearchController.java
    @RequestMapping(path = "/search", method = RequestMethod.GET)
    public String searchFilms(@RequestParam String categoryName, @RequestParam(required = false, defaultValue = "0") int minLength,
                              @RequestParam(required = false, defaultValue = "500") int maxLength, ModelMap modelHolder) {
        modelHolder.put("films", filmDao.getFilmsBetween(categoryName,minLength, maxLength));
=======
    @RequestMapping(path = "/filmSearch", method = RequestMethod.GET)
    public String searchFilms(@RequestParam(defaultValue = "0") int minimumLength,
            @RequestParam(defaultValue = "1000") int maximumLength, @RequestParam String genre, ModelMap modelHolder) {
        modelHolder.put("films", filmDao.getFilmsBetween(genre, minimumLength, maximumLength));
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-final/java/src/main/java/com/techelevator/FilmSearchController.java
        return "filmList";
    }

}