package com.example.demo;





import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class StudentControllers {
	
	@Autowired
	StudentService ss;
		
	@RequestMapping("/")
	public String register()
	{
		return "index";
	}
	
	@RequestMapping("/Register")
	public String Register()
	{
		return "Register";
	}
	
	@RequestMapping("/saveData")
	public String Register(@ModelAttribute("s1") Student s1)
	{
		ss.register(s1);
		
		return "studLogin";
	}
	
	@RequestMapping("/studLogin")
	public String login()
	{
		return "studLogin";
	}
	
	
	@PostMapping("/checkStudInfo")
	public String checkStudInfo(@RequestParam("u1") String u1,@RequestParam("p1") String p1,HttpSession h1)
	{
		Student s1=ss.checkBoth(u1, p1);
		
		if(s1!=null)
		{
			h1.setAttribute("temp", s1.getUsername());
	
		    return "redirect:/dash";		
		}
		return "redirect:/studLogin";
	}
	
	@RequestMapping("/dash")
	public String dash(HttpSession h1)
	{
		if(h1.getAttribute("temp")==null)
		{
			return "redirect:/studLogin";
		}
		return "dash";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession h1)
	{
		h1.invalidate();
		return "redirect:/studLogin";
	}
	
	@RequestMapping("/AdminLogin")
	public String AdminLogin()
	{
		return "AdminLogin";
	}
    
	@RequestMapping("/adminLog")
	public String adminLog(@RequestParam("u2") String u2,@RequestParam("p2") String p2,HttpSession s1)
	{
		if(u2.equals("admin") && p2.equals("admin@123"))
		{
			s1.setAttribute("ht", "admin");
			return "redirect:/Admindash";
		}
		
		return "redirect:/AdminLogin";
		
	}
	
	
	@RequestMapping("/Admindash")
	public String Admindash(HttpSession s1)
	{
		if(s1.getAttribute("ht")==null)
		{
			return "redirect:/AdminLogin";
		}
		return "Admindash";
	}
	
	
	@RequestMapping("/AdminLog")
	public String AdminLog(HttpSession s1)
	{
		s1.invalidate();
		return "AdminLog";
	}
	
	@RequestMapping("/AddTask")
	public String AddTask()
	{
		return "AddTask";
	}
	
	
	
	
	
	  @PostMapping("/one")
	  public String assignTask(@ModelAttribute("ts") Task ts)
	  {
		  
		  
	         ss.savetask(ts);
		  
	         return "Admindash";
	   }

	   
	@GetMapping("/showtask")
	public String showtask(Model m)
	{
	    List<Task> tk=ss.getAll();
		m.addAttribute("kk",tk);
		return "showTask";
	}
	
		
}
