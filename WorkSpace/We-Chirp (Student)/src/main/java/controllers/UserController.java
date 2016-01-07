/* UserController.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import domain.User;

@Controller
@RequestMapping("/user")
public class UserController extends AbstractController {

	// Supporting services ----------------------------------------------------

	// TODO: add the required supporting services.

	// Constructors -----------------------------------------------------------

	public UserController() {
		super();
	}

	// Registration -----------------------------------------------------------

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		
		// TODO: implement this method so that it returns a view to register
		// a new user.  Please, check the views that are provided in this project
		// to find the one that is appropriate for this task.

		return null;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST, params = "register")
	public ModelAndView save(@Valid User user, BindingResult binding) {
		
		// TODO: implement this method so that if attempts to save "user"; if this 
		// operation succeeds, then it must redirect to the login view; the idea is that 
		// the user must be able to login immediately after he or she's registered.
		// If there's a problem because the selected username is already registered, then 
		// the screen should show message "user.duplicated.username" (consult the 
		// i18n&l10n resources); otherwise, it should return a generic error. 

		return null;
	}

}