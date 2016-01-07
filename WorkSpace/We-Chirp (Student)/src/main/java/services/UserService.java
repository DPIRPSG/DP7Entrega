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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.UserRepository;
import security.Authority;
import security.LoginService;
import security.UserAccount;

import domain.User;

@Service
@Transactional
public class UserService {

	// Managed repository -----------------------------------------------------

	// TODO: add the required managed repositories.
	@Autowired
	private UserRepository userRepository;
	
	// Supporting services ----------------------------------------------------
	
	// TODO: add the required managed services.
	@Autowired
	private UserAccountService userAccountService;
	
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
		
		User result;
		UserAccount userAccount;

		result = new User();
		
		userAccount = userAccountService.create("USER");
		result.setUserAccount(userAccount);
		
		return result;
	}
		
	public void save(User user) {
		
		// TODO: implement this method so that it saves the user that is passed as 
		// a parameter.  Please, don't forget that you need hash the password before
		// it's saved to the database.  Passwords should never be stored in plain 
		// text in professional web information systems.  Please consult the 
		// supporting services if you don't know how to hash a password.
		Assert.notNull(user);
				
		boolean result = true;
		for(Authority a: user.getUserAccount().getAuthorities()){
			if(!a.getAuthority().equals("USER")){
				result = false;
				break;
			}
		}
		Assert.isTrue(result, "A user can only be a authority.user");
		
		if(user.getId() == 0){
			UserAccount auth;
			
			//Encoding password
			auth = user.getUserAccount();
			auth = userAccountService.modifyPassword(auth);
			user.setUserAccount(auth);
		}
		userRepository.save(user);
	}

	// Other business methods -------------------------------------------------
	
	public User findByPrincipal() {
		
		// TODO: implement this method so that it returns the "User" object that
		// corresponds to the principal. 
		
		User result;
		UserAccount userAccount;
		
		userAccount = LoginService.getPrincipal();
		Assert.notNull(userAccount);
		result = userRepository.findByUserAccountId(userAccount.getId());
		Assert.notNull(result);
		
		return result;		
	}
	
}