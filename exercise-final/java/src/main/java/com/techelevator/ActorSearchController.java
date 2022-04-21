package com.techelevator;

import java.util.List;
import java.util.Map;

import com.techelevator.dao.ActorDao;

import com.techelevator.dao.model.Actor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ActorSearchController {

	@Autowired
	private ActorDao actorDao;

<<<<<<< HEAD:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-student/java/src/main/java/com/techelevator/ActorSearchController.java
	/* What request mapping do we want here */
	@RequestMapping("/actorList")
=======
	@RequestMapping(path = "/actorForm", method = RequestMethod.GET)
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-final/java/src/main/java/com/techelevator/ActorSearchController.java
	public String showSearchActorForm() {
		return "actorList";
	}

<<<<<<< HEAD:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-student/java/src/main/java/com/techelevator/ActorSearchController.java
	@RequestMapping("/search")
	public String searchActors(@RequestParam String search, ModelMap modelHolder) {
		modelHolder.put("actors", actorDao.getMatchingActors(search));
		/* Call the model and pass values to the jsp */
=======
	@RequestMapping(path = "/actorSearch", method = RequestMethod.GET)
	public String searchActors(@RequestParam String search, ModelMap models) {
		models.put("actors", actorDao.getMatchingActors(search));
>>>>>>> 5dadec0d4cdc076d3bdd3d25ac63f0b455637f5c:module-3/06-Forms-and-Controllers-HTTP-GET/exercise-final/java/src/main/java/com/techelevator/ActorSearchController.java
		return "actorList";
	}
}
