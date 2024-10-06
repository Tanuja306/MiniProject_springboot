package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;



public interface StudentRepo extends JpaRepository<Student,Integer> 
{

	public Student findByUsername(String u1);

	public Student findByUsernameAndPass(String u1,String p1);

	

	
}
