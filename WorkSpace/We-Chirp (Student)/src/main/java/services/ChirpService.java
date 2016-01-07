/* ChirpService.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package services;

import java.util.Collection;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import domain.Chirp;

@Service
@Transactional
public class ChirpService {

	// Managed repository -----------------------------------------------------

	// TODO: add the required managed repositories.
	
	// Supporting services ----------------------------------------------------

	// TODO: add the required supporting services.
	
	// Constructors -----------------------------------------------------------
	
	public ChirpService() {
		super();
	}
	
	// Simple CRUD methods ----------------------------------------------------
	
		public Chirp create() {
			
			// TODO: implement this method so that it returns a new chirp.  Please
			// don't forget that the moment must be in the past or otherwise it's 
			// invalid.  This is quite a difficult bug to catch.
			
			return null;
		}
		
		public Collection<Chirp> findLatest() {
			
			// TODO: implement this method so that it returns the collection of chirps 
			// that were published during the last 31 days.  
			
			return null;
		}

		public Collection<Chirp> findByUserId(int userId) {
			
			// TODO: implement this method so that it returns the collection of chirps
			// that were published by the user whose identifier is passed as a parameter.
			
			return null;
		}
		
		public void publish(Chirp chirp) {
			
			// TODO: implement this method so that it publishes the chirp that is passed
			// as a parameter.  Please, don't forget to check the principal so that 
			// you can prevent a user from publishing chirps on behave of another user.  

		}

		// Other business methods -------------------------------------------------
		
		public void checkPrincipal(Chirp chirp) {
			
			// TODO: implement this method so that it checks that the principal's the 
			// author of the chirp that is passed as a parameter.
			
		}

}
