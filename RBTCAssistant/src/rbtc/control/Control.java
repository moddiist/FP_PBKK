package rbtc.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Control {

	@RequestMapping("/")
	public String mainPage() {
		return "home-page";
	}
	
	@RequestMapping("/login")
	public String loginPage(){
		return "login-page";
	}
	
	@RequestMapping("/signup")
	public String signupPage() {
		return "signup-page";
	}
}
