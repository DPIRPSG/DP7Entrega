/* ChirpController.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/chirp")
public class ChirpController extends AbstractController {
	
	// Supporting services ----------------------------------------------------

	// TODO: add the required supporting services.
		
	// Constructors -----------------------------------------------------------
	
	public ChirpController() {
		super();
	}
		
	// Index ------------------------------------------------------------------		

	@RequestMapping(value = "/list")
	public ModelAndView list(@RequestParam(required = false) Integer userId) {
		
		// TODO: implement this method so that it lists the chirps that were 
		// published during the last thirty one days of by a specific user 
		// depending on the parameters of the request URL.  Please, realise
		// that you need change the signature of this method, not only its body.
		
		return null;
	}
}