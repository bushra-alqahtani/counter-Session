package com.example.demo;

	import javax.servlet.http.HttpSession;

	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.RequestMapping;

	@Controller
	public class HomeController {
		
		
		@RequestMapping("/your_server/counter")
		public String counter(Model model, HttpSession session) {
					
			if(session.getAttribute("counter")== null){
				session.setAttribute("counter",0);
				}
			else {
				
				int count = (int) session.getAttribute("counter");
				session.setAttribute("counter",++count);
			}
			
			model.addAttribute("counter", session.getAttribute("counter"));
			System.out.println("counter is:" + session.getAttribute("counter"));
			return "index.jsp";
			
		}
	

	}
	
