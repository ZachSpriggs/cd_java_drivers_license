package com.zach.license.services;

import java.util.*;
import org.springframework.stereotype.Service;
import com.zach.license.repositories.LicenseRepository;
import com.zach.license.repositories.PersonRepository;
import com.zach.license.models.License;
import com.zach.license.models.Person;

@Service
public class LicenseService {
	
	private final PersonRepository personRepo;
	private final LicenseRepository licenseRepo;
	
	public LicenseService(LicenseRepository licenseRepo, PersonRepository personRepo) {
		this.personRepo = personRepo;
		this.licenseRepo = licenseRepo;
	}
	
	public List<Person> allPeople(){
		return personRepo.findAll();
	}
	
	public Person createUser(Person person) {
		return personRepo.save(person);
	}
	
	public License createLicense(License license) {
		return licenseRepo.save(license); 
	}
	
	public Person findPerson(Long id) {
		Optional<Person> optionalPerson = personRepo.findById(id);
		if(optionalPerson.isPresent()) {
			return optionalPerson.get();
		} else {
			return null;
		}
	}
	
}
