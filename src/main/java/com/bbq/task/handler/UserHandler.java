package com.bbq.task.handler;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbq.task.model.User;
import com.bbq.task.service.UserService;

@Controller
public class UserHandler {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value="/")
	public String index(Map<String, Object> map){
		List<User> users = userService.getAllUser();
		System.out.println(users);
		map.put("users", users);
		return "index";
	}

}
