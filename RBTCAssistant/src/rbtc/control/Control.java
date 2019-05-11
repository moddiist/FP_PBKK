package rbtc.control;

import rbtc.model.*;
import java.util.List;
import javax.validation.Valid;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
@RequestMapping("/RBTCAssistant")
@SessionAttributes("model")
public class Control {

	@RequestMapping("/")
	public String mainPage() {
		return "home-page";
	}
	
	@RequestMapping("/login")
	public String loginPage(Model model){
		model.addAttribute("model", new Login());
		return "login-page";
	}
	
	@RequestMapping("/prosesLogin")
	public ModelAndView prosesLogin(@Valid @ModelAttribute("model") Login data, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("/RBTCAssistant/login");
			return mav;
		}
		else {
			if(data.getRole().equals("Mahasiswa")) {
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Mahasiswa.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get student
					Mahasiswa user = ses.get(Mahasiswa.class, data.getId() );
					if(user.getPassword().equals(data.getPassword())) {
						ModelAndView mav = new ModelAndView("redirect:/mhs/home-mhs");
						mav.addObject("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("/RBTCAssistant/login");
						return mav;
					}

				}
				finally {
					s.close();
				}
			}
			else if(data.getRole().equals("Pustakawan")){
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Pustakawan.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get student
					Pustakawan user = ses.get(Pustakawan.class, data.getId() );
					if(user.getPassword().equals(data.getPassword())) {
						ModelAndView mav = new ModelAndView("redirect:/ptk/home-ptk");
						mav.addObject("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("/RBTCAssistant/login");
						return mav;
					}

				}
				finally {
					s.close();
				}
			}
			else {
				ModelAndView mav = new ModelAndView("/RBTCAssistant/login");
				return mav;
			}
			
		}
	}
	
	@RequestMapping("/signup")
	public String signupPageMahasiswa(Model model) {
		model.addAttribute("model", new Mahasiswa());
		return "signup-page";
	}
	
	@RequestMapping("logout")
	public String logout(SessionStatus session, ModelMap model) {
		session.setComplete();
		return "redirect:/RBTCAssistant/";
	}
	
//	@RequestMapping("/profil-mhs")
//	public String editMahasiswa(@RequestParam("mhsNRP") int nrp, Model theModel) {
//		
//		Mahasiswa iniMahasiswa = editMahasiswa.getMahasiswa(nrp);
//		
//		theModel.addAtribute("mahasiswa", iniMahasiswa);
//		
//		return "data-mahasiswa";
//	}
	
	
	
}