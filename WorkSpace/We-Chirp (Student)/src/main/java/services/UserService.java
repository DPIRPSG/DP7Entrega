/* UserService.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import domain.User;

@Service
@Transactional
public class UserService {

	// Managed repository -----------------------------------------------------

	// TODO: add the required managed repositories.
	
	// Supporting services ----------------------------------------------------
	
	// TODO: add the required managed services.
	
	// HINT: you're very likely to require an MD5 password encoder.  Search 
	// the Web to find information on how to implement such an encoder in Java.
	
	// Constructors -----------------------------------------------------------
	
	public UserService() {
		super();
	}
	
	// Simple CRUD methods ----------------------------------------------------

	public User create() {
		
		// TODO: implement this method so that it return a new user ready to 
		// be edited.  Don't forget to assign an appropriate authority and an 
		// empty collection of chirps.
		
		return null;
	}
		
	public void save(User user) {
		
		// TODO: implement this method so that it saves the user that is passed as 
		// a parameter.  Please, don't forget that you need hash the password before
		// it's saved to the database.  Passwords should never be stored in plain 
		// text in professional web information systems.  Please consult the 
		// supporting services if you don't know how to hash a password.
		
	}

	// Other business methods -------------------------------------------------
	
	public User findByPrincipal() {
		
		// TODO: implement this method so that it returns the "User" object that
		// corresponds to the principal. 
		
		return null;		
	}
	
}