/* UserRepository.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	// TODO: write a JPQL query that returns the user who owns the 
	// user account whose identifier is passed as as parameter.  
	
	@Query("select u from User u where u.userAccount.id = ?1")
	User findByUserAccountId(int userAccountId);
		
}
