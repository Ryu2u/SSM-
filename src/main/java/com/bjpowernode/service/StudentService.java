package com.bjpowernode.service;

import com.bjpowernode.domain.Student;

import java.util.List;

/**
 * @author Ryuzu
 * @date 2022/1/12 13:41
 */
public interface StudentService {
    int addStudent(Student student);
    List<Student> findStudent();
}
