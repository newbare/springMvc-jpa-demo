package com.beth.mvc.repository.custom;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.beth.mvc.entity.Person;

public interface PersonRepositoryCustom {
    Page<Person> findByNameLike(String name, Pageable pageable);
}
