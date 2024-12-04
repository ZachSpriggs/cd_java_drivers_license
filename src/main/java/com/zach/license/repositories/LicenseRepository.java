package com.zach.license.repositories;

import java.util.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.zach.license.models.License;


@Repository
public interface LicenseRepository extends CrudRepository<License, Long>{
	List<License> findAll();
}
