package com.project.accounting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.accounting.model.Project;
import com.project.accounting.servicesImpl.ProjectService;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectService projectService;
	
	
	@RequestMapping(value="/saveProject", method= RequestMethod.POST)
	public String saveProject(@RequestBody Project project) {
		projectService.saveProject(project);
		
		return "";
	}

}
