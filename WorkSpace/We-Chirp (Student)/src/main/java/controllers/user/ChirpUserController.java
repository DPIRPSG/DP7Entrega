/* ChirpUserController.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers.user;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import services.ChirpService;
import controllers.AbstractController;
import domain.Chirp;

@Controller
@RequestMapping("/chirp/user")
public class ChirpUserController extends AbstractController {
	
	// Supporting services ----------------------------------------------------

	@Autowired
	private ChirpService chirpService;
		
	// Constructors -----------------------------------------------------------
	
	public ChirpUserController() {
		super();
	}
		
	// Creation ---------------------------------------------------------------		

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView result;
		Chirp chirp;
		
		chirp = chirpService.create();
		
		result = new ModelAndView("chirp/edit");
		result.addObject("chirp", chirp);
		
		return result;
	}
	
	// Edition ----------------------------------------------------------------
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST, params = "publish")
	public ModelAndView save(@Valid Chirp chirp, BindingResult binding) {
		ModelAndView result;
		String redirectView;

		if (binding.hasErrors()) {
			result = createEditModelAndView(chirp);
		} else {
			try {
				chirpService.publish(chirp);
				redirectView = String.format("redirect:../list.do?userId=%d", chirp.getUser().getId());
				result = new ModelAndView(redirectView);				
			} catch (Throwable oops) {
				result = createEditModelAndView(chirp, "chirp.commit.error");				
			}
		}

		return result;
	}
	
	// Ancillary methods ------------------------------------------------------
	
	protected ModelAndView createEditModelAndView(Chirp chirp) {
		ModelAndView result;

		result = createEditModelAndView(chirp, null);
		
		return result;
	}	
	
	protected ModelAndView createEditModelAndView(Chirp chirp, String message) {
		ModelAndView result;
					
		result = new ModelAndView("chirp/edit");
		result.addObject("chirp", chirp);
		result.addObject("message", message);

		return result;
	}
	
				
	
}