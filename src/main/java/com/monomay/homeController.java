package com.monomay;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

	@RequestMapping("/index")
	public String showindex() {
		return "index";
	}
	
	
	@RequestMapping("/about")
	public String showabout() {
		
		return "about";
	}
	
	@RequestMapping("/cart")
	public String showcart() {
		
		return "cart";
	}
	@RequestMapping("/meal")
	public String showmeal() {
		
		return "meal";
	}
	@RequestMapping("/sign")
	public String showsign() {
		
		return "sign";
	}
	@RequestMapping("/menu")
	public String showmenu() {
		
		return "menu";
	}
	@RequestMapping("/contact")
	public String showcontact() {
		
		return "contact";
	}
	
	
}
