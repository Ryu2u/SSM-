package com.bjpowernode.dao;

import com.bjpowernode.domain.Student;

import java.util.List;

/**
 * @author Ryuzu
 * @date 2022/1/12 13:38
 */
public interface StudentDao {
    int insertStudent(Student student);

    List<Student> selectStudent();

}
