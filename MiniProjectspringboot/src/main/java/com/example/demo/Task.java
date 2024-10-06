package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Task 
{
	    @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private int id;

	    private String task;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTask() {
			return task;
		}

		public void setTask(String task) {
			this.task = task;
		}

		@Override
		public String toString() {
			return "Task [id=" + id + ", task=" + task + "]";
		}

	   
		
	    
	    
	    
	    
	}


