package com.example.demo;

import java.util.List;

public interface StudentService
{
	
	public void register(Student s1);
	
	
   	public Student checkBoth(String u1,String p1);

     public void saveinfo(Student s2);
     
     public Student show(int id,Student s2);


	


	public void savetask(Task ts);


	public List<Task> getAll();


	

    



    
    
    
	


}
