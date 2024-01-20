package com.jspiders.smswithspringmvcpractice.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvcpractice.pojo.StudentPOJO;

@Component
public class StudentRepository {

	@Autowired
	private EntityManager entityManager;

	public void addStudent(StudentPOJO studentPOJO) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(studentPOJO);
		entityTransaction.commit();
	}

	@SuppressWarnings("unchecked")
	public List<StudentPOJO> getAllStudents() {
		Query query = entityManager.createQuery("SELECT student FROM StudentPOJO student");
		return query.getResultList();
	}

	public StudentPOJO getStudentById(long id) {
		return entityManager.find(StudentPOJO.class, id);
	}

	public void deleteStudent(StudentPOJO studentPOJO) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(studentPOJO);
		entityTransaction.commit();
	}

	@SuppressWarnings("unchecked")
	public List<StudentPOJO> searchStudentByPattern(String pattern) {
		Query query = entityManager
				.createQuery("SELECT student FROM StudentPOJO student WHERE name LIKE '%" + pattern + "%'");
		return query.getResultList();
	}

}
