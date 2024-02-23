package com.tap.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {

	@Id
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="email")
	private String email;
	@Column(name="semester")
	private String semester;
	@Column(name="marks")
	private String marks;
	
	public Student(int id, String name, String email, String semester, String marks) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.semester = semester;
		this.marks = marks;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", semester=" + semester + ", marks="
				+ marks + "]";
	}
	
}





	
	
	
	
	


