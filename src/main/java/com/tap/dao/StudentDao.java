package com.tap.dao;

import java.util.List;

import com.tap.entity.Student;

public interface StudentDao {
      void connect();
      String insert(Student s);
      List fetchAll();
      int Update(Student s);
      int Delete(int id);
      }
