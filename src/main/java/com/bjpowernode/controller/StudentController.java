package com.bjpowernode.controller;

import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Ryuzu
 * @date 2022/1/12 14:10
 */
@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService service = null;

    /**
     * 添加学生
     * @param student
     * @return
     */
    @RequestMapping(value = "/addStudent.do")
    public ModelAndView addStudent(Student student) {
        ModelAndView mv = new ModelAndView();
        int count = service.addStudent(student);
        String tips = "";
        if (count > 0) {
            //添加成功
            tips = "["+student.getName()+"]添加成功!";
        }else{//添加失败
            tips="注册功能";
        }
        mv.addObject("tips", tips);
        mv.setViewName("result");
        return mv;
    }

    /**
     * 查询学生
     * 响应ajax使用json
     */
    @ResponseBody
    @RequestMapping(value = "/findStudent.do")
    public List<Student> findStudent(){
        List<Student> list = service.findStudent();
        return list;

    }
}
