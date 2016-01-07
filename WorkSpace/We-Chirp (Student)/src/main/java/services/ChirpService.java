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
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.ChirpRepository;

import domain.Chirp;
import domain.User;

@Service
@Transactional
public class ChirpService {

	// Managed repository -----------------------------------------------------

	// TODO: add the required managed repositories.
	@Autowired
	private ChirpRepository chirpRepository;
	
	// Supporting services ----------------------------------------------------

	// TODO: add the required supporting services.
	@Autowired
	private UserService userService;
	// Constructors -----------------------------------------------------------
	
	public ChirpService() {
		super();
	}
	
	// Simple CRUD methods ----------------------------------------------------
	
		public Chirp create() {
			
			// TODO: implement this method so that it returns a new chirp.  Please
			// don't forget that the moment must be in the past or otherwise it's 
			// invalid.  This is quite a difficult bug to catch.
			
			Chirp result;
			User user;
			
			result = new Chirp();
			user = userService.findByPrincipal();
			
			result.setMoment(new Date());
			result.setUser(user);
			return result;
		}
		
		public Collection<Chirp> findLatest() {
			
			// TODO: implement this method so that it returns the collection of chirps 
			// that were published during the last 31 days.  
			Collection<Chirp> result;
			Date date;
			
			date = new Date();
			
			result = chirpRepository.findLatest(date);
			
			return result;
		}

		public Collection<Chirp> findByUserId(int userId) {
			
			// TODO: implement this method so that it returns the collection of chirps
			// that were published by the user whose identifier is passed as a parameter.
			Assert.notNull(userId);
			
			Collection<Chirp> result;

			result = chirpRepository.findByUserId(userId);
			
			return result;
		}
		
		public void publish(Chirp chirp) {
			
			// TODO: implement this method so that it publishes the chirp that is passed
			// as a parameter.  Please, don't forget to check the principal so that 
			// you can prevent a user from publishing chirps on behave of another user.  
			Assert.notNull(chirp);
			checkPrincipal(chirp);
			
			chirpRepository.save(chirp);
		}

		// Other business methods -------------------------------------------------
		
		public void checkPrincipal(Chirp chirp) {
			
			// TODO: implement this method so that it checks that the principal's the 
			// author of the chirp that is passed as a parameter.
			Assert.isTrue(userService.findByPrincipal().equals(chirp.getUser()));
		}

}
