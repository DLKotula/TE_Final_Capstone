package com.techelevator;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.techelevator.model.JdbcReviewDao;
import com.techelevator.model.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

    @Autowired
    private JdbcReviewDao jdbcReviewDao;

    @RequestMapping("/greeting")
    public String displayGreeting(ModelMap modelHolder) {
        modelHolder.put("reviews",jdbcReviewDao.getAllReviews());
        return "greeting";
    }

    @RequestMapping("/inputForm")
    public String displayForm() {
        return "inputForm";
    }

    @RequestMapping(path = "/inputForm", method = RequestMethod.POST)
    public String processReviewForm(@RequestParam String username, @RequestParam int rating,
                                    @RequestParam String title, @RequestParam String text) {
        Review review = new Review(username, rating, title, text);
        jdbcReviewDao.save(review);
        return "redirect:/confirmationPage";
    }

    @RequestMapping("/confirmationPage")
    public String displayConfirmation() {
        return "confirmationPage";
    }

}
