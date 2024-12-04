package com.zach.license.repositories;

import java.util.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.zach.license.models.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long>{

	// retrieves all users 
	List<Person> findAll();

}