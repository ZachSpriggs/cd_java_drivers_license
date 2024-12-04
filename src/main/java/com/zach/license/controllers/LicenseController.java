package com.zach.license.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.zach.license.models.License;
import com.zach.license.models.Person;
import com.zach.license.services.LicenseService;
import java.util.*;
import javax.validation.*;

@Controller
public class LicenseController {

	private final LicenseService licenseService;
	
	public LicenseController(LicenseService licenseService) {
		this.licenseService = licenseService;
	}
	
	@RequestMapping("/")
	public String index(Model model) {
		Person person = new Person();
		model.addAttribute("person", person);
		return "index.jsp";
	}
	
	@RequestMapping(value = "/person", method = RequestMethod.POST)
	public String createPerson(Model model, @Valid @ModelAttribute("person")Person person, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			person = licenseService.createUser(person);
			model.addAttribute("person", person);
			return "redirect:/license";
		}
	}
	
	@RequestMapping("/license")
	public String licensePage(Model model, @ModelAttribute("license") License license) {
		List<Person> people = licenseService.allPeople();
		model.addAttribute("people", people);
		return "createLicense.jsp";
	}
	
	@RequestMapping(value = "/createLicense", method = RequestMethod.POST)
	public String createLicense(@Valid @ModelAttribute("license") License license, BindingResult result) {
		if(result.hasErrors()) {
			return "createLicense.jsp";
		} else {
			licenseService.createLicense(license);
			return "redirect:/persons/" + license.getPerson().getId();
		}
	}
	
	@RequestMapping(value = "/persons/{id}", method = RequestMethod.GET)
	public String show(@PathVariable("id") Long personId, Model model) {
		Person person = licenseService.findPerson(personId);
		model.addAttribute("person", person);
		return "show.jsp";
	}
}
