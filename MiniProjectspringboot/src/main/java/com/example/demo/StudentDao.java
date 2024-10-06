package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



@Service
public class StudentDao implements StudentService
{
    @Autowired
	StudentRepo sr;
    
    @Autowired
    TaskRepo tr;

	@Override
	public void register(Student s1) {
		
		sr.save(s1);
	}

	@Override
	public Student checkBoth(String u1, String p1) {
		
		return sr.findByUsernameAndPass(u1, p1);
		
	}
	
	 public Student findByUsername(String username)
	 {
	        return sr.findByUsername(username);
	  }

	   
		@Override
		public void saveinfo(Student s2) 
		{
			sr.save(s2);
		}

		@Override
		public Student show(int id, Student s2) {
			
			return sr.getById(id);
		}

		@Override
		public void savetask(Task ts) {
			tr.save(ts);
			
		}

		@Override
		public List<Task> getAll() {
		
			return tr.findAll();
		}

		

		

		

		
}
