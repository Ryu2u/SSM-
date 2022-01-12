package com.bjpowernode.service.impl;

import com.bjpowernode.dao.StudentDao;
import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Ryuzu
 * @date 2022/1/12 13:41
 */
@Service
public class StudentServiceImpl implements StudentService {
    //使用@Autowired或者@Resource给引用类型赋值
    @Resource
    private StudentDao dao = null;

    @Transactional
    @Override
    public int addStudent(Student student) {
        int count = dao.insertStudent(student);
        return count;
    }

    @Override
    public List<Student> findStudent() {
        List<Student> studentList = dao.selectStudent();
        return studentList;
    }
}
