package com.bbq.task.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserHandler {
	
	@RequestMapping(value="/index")
	public String index(){
		
		return "ok";
	}

}
