package com.tap.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tap.entity.Student;

public class StudentDaoImp implements StudentDao {
	static Session session;
	SessionFactory sf;

	@Override
	public void connect() {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
		 sf = (SessionFactory) ac.getBean("sessionfactory");
		session =  sf.openSession();
		System.out.println("connection established");

	}

	@Override
	public String insert(Student s) {
		// TODO Auto-generated method stub
		System.out.println("insert method is called by studentdao");
		Transaction beginTransaction = session.beginTransaction();
		session.save(s);
		beginTransaction.commit();
		return "success";
	}
	@Override
	public List<Student> fetchAll(){
		System.out.println("get");
		System.out.println(session);
		Query q = session.createQuery("from Student");
		List<Student> list = q.getResultList();
		return list;
	}

	@Override
	public int  Update(Student s) {
		// TODO Auto-generated method stub
	   Transaction beginTransaction = session.beginTransaction();
	   Student st = session.get(Student.class, s.getId());
	     st.setName(s.getName()); 
	     st.setEmail(s.getEmail());
	     st.setSemester(s.getSemester());
	     st.setMarks(s.getMarks());
	     session.update(st);
	     beginTransaction.commit();
	     return 1;
	}

    @Override
    public int Delete(int id) {
	// TODO Auto-generated method stub
     	Transaction beginTransaction = session.beginTransaction();
	   Student st = session.get(Student.class,id);
		   session.delete(st);
		   beginTransaction.commit();
		return 0;
	}
	

}
