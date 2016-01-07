/* ChirpRepository.java
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package repositories;

import java.util.Collection;
import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Chirp;

@Repository
public interface ChirpRepository extends JpaRepository<Chirp, Integer> {

	// TODO: write a JPQL query that returns the chirps that where published 
	// since the date that is indicated; the collection must be ordered in descending
	// order of moment.
	
	@Query("")
	Collection<Chirp> findLatest(Date since);

	// TODO: write a JPQL query that returns the chirps that were published by the
	// user whose id is passed as a parameter; the collection must be ordered in descending
	// order of moment.
	
	@Query("")
	Collection<Chirp> findByUserId(int userId);
		
}
