package com.example.service;

import java.util.List;

import javax.annotation.Resource;

import com.example.dao.PersonDAO;
import com.example.model.Person;
import org.springframework.stereotype.Component;

import org.springframework.stereotype.Service;
@Service
public class PersonServiceGroovy implements PersonService {
	private PersonDAO personDAO ;


	@Resource
	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}

    @Override
    public void addPerson(Person person) {
        personDAO.save(person);
    }

    @Override
    public List<Person> listPeople() {
        return personDAO.findAll();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void removePerson(Integer id) {
        personDAO.delById(personDAO.get(id));
    }

}
