package com.example.dao;

import java.util.List;

import javax.annotation.Resource;

import com.example.model.Person;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;


@Component
public class PersonDAO {
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void save(Person user) {
		hibernateTemplate.save(user);
	}

	@SuppressWarnings("unchecked")
	public List<Person> findByUsername(String username) {
		 return
		 (List<Person>)hibernateTemplate.find("from Person u where u.username = ?",username);
	}

    public List<Person> findAll(){
        return (List<Person>) hibernateTemplate.loadAll(Person.class);
    }
	
	@SuppressWarnings("unchecked")
	public List<Person> listUser(){
		return hibernateTemplate.find("from Person u");
	}

    public Person get(Integer id){
        return hibernateTemplate.get(Person.class,id);
    }

    public void delById(Person person){
        hibernateTemplate.delete(person);
    }
}
