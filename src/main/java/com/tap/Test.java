package com.tap;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tap.dao.StudentDaoImp;
import com.tap.entity.Student;

@Controller
public class Test {
	
	

	@RequestMapping("/")
	public String collectData(HttpServletRequest req)
	{
		    StudentDaoImp st = new StudentDaoImp();
		    st.connect();
			List<Student> list = st.fetchAll();
			req.setAttribute("slist", list);
			return "index";
	}
	
	@RequestMapping("insertform")
	public String insertform()
	{
		return "form";
		
	}
	
 @RequestMapping("formsubmited")
 public String sendData(@RequestParam("id")int id,@RequestParam("name") String name,@RequestParam("email") String email,
 		@RequestParam("sem") String sem,@RequestParam("marks") String marks)
    {
		Student st = new Student(id, name, email, sem, marks);
     	StudentDaoImp sts = new StudentDaoImp();
    	sts.connect();
    	String sucess = sts.insert(st);
    	return "redirect:/";
		
	}
 @RequestMapping("updatestudent")
 public String update()
 {
	return "update";
	 
 }
 @RequestMapping("updateform")
 public String updateform(@RequestParam("id")int id,@RequestParam("name") String name,@RequestParam("email") String email,
	 		@RequestParam("sem") String sem,@RequestParam("marks") String marks)
 {
	 Student st = new Student(id,name,email,sem,marks);
	 StudentDaoImp sts= new StudentDaoImp();
	 sts.connect();
	 int update = sts.Update(st);
	return "redirect:/";
	 
 }
 
 @RequestMapping("deletestd")
 public String Deleteform(@RequestParam("id") int id) {
	 StudentDaoImp sts= new StudentDaoImp();
	 sts.connect();
	 sts.Delete(id);
	 return "redirect:/";
 }
 
 

}
