package com.techelevator.validation.controller;


import com.techelevator.validation.model.Registration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.validation.model.Login;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
public class UserController {
    // GET: /
    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String getMainScreen() {
        return "homePage";
    }

    // Add the following Controller Actions

    // GET: /register
    // Return the empty registration view

    @RequestMapping(path = "/register", method = RequestMethod.GET)
    public String getRegistrationPage(ModelMap modelHolder) {
        if (!modelHolder.containsAttribute("register")) {
            modelHolder.put("register", new Registration());
        }
        return ("register");
    }

    // POST: /register
    // Validate the model and redirect to confirmation (if successful) or return
    // the
    // registration view (if validation fails)

    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processRegistrationForm(@Valid @ModelAttribute Registration register, BindingResult result,
                                          RedirectAttributes flash) {
        flash.addFlashAttribute("register", register);

        if (!register.getPassword().equals(register.getPasswordConfirmation())) {
            result.addError(new FieldError("register", "passwordConfirmation", "Passwords do not match"));
        }

        if (!register.getEmail().equals(register.getEmailConfirmation())) {
            result.addError(new FieldError("register", "emailConfirmation", "Emails do not match"));
        }

        if (result.hasErrors()) {
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "register", result);
            return "redirect:/register";
        }
        return "redirect:/registerConfirmation";
    }

    @RequestMapping("/registerConfirmation")
    public String getRegisterConfirmationPage() {
        return "registerConfirmation";
    }

    // GET: /login
    // Return the empty login view

    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String getLoginPage(ModelMap modelHolder) {
        if (!modelHolder.containsAttribute("login")) {
            modelHolder.put("login", new Login());
        }
        return ("login");
    }

    // POST: /login
    // Validate the model and redirect to a confirmation page if validation is
    // successful. Return the login view (if validation fails).

    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public String processLoginForm(@Valid @ModelAttribute Login login, BindingResult result,
                                   RedirectAttributes flash) {
        flash.addFlashAttribute("login", login);

        if (result.hasErrors()) {
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "login", result);
            return "redirect:/login";
        }
        return "redirect:/loginConfirmation";
    }


    // GET: /confirmation
    // Return the confirmation view

    @RequestMapping("/loginConfirmation")
    public String getLoginConfirmationPage() {
        return "loginConfirmation";
    }
}
