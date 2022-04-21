package com.techelevator.mailingList;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.mailingList.model.MailingListSignUp;

@Controller
public class MailingListController {

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String showMailingListForm(ModelMap modelHolder) {
		//This is stating if there is not a sign up already create a new one. However if there is one already use it.
		//This allows for information already entered in the sign up to stay instead of wiping it when hitting sign up everytime
		if (!modelHolder.containsAttribute("signUp")) {
			modelHolder.put("signUp", new MailingListSignUp());
		}

		return "signUp";
	}

	@RequestMapping(path = "/signUp", method = RequestMethod.POST)
	public String processMailingListForm(@Valid @ModelAttribute MailingListSignUp signUp, BindingResult result,
			RedirectAttributes flash) {
		if(signUp.getName().equals("Randy")) {
			result.addError(new FieldError("signUp", "name", "Nope!"));
		}

		flash.addFlashAttribute("signUp", signUp);

		if (result.hasErrors()) {
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "signUp", result);
			return "redirect:/";
		}
<<<<<<< HEAD:module-3/09-Data-Validation-and-View-Models/lecture-student/java/src/main/java/com/techelevator/mailingList/MailingListController.java
		// This is where things happen for the signup and would use the below to post to a DB
		// mailingListDao.save(signUp);
=======
		// This is where things happen for the signup
		//mailingListDao.save(signUp);
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/09-Data-Validation-and-View-Models/lecture-final/java/src/main/java/com/techelevator/mailingList/MailingListController.java

		return "redirect:/thanks";
	}

	@RequestMapping(path = "/thanks", method = RequestMethod.GET)
	public String showThanksPage() {
		return "thanks";
	}
}
