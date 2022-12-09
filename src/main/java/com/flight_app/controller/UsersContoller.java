package com.flight_app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_app.entities.Users;
import com.flight_app.repository.UsersRepository;

@Controller
public class UsersContoller {
	
	@Autowired
	UsersRepository usersRepo;
	
	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login/login";
	}
	
	@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}
	
	@RequestMapping("/saveReg")
	public String saveReg(@ModelAttribute("users") Users users) {
		usersRepo.save(users);
		return "login/login";
	}
	
	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("email") String email, @RequestParam("password") String password,ModelMap modelMap) {
		Users user = usersRepo.findByEmail(email);
		if(user!=null) {
			if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
			return "findFlight";
			}else {
			modelMap.addAttribute("error", "Invalid username/password!! Please Re-Enter");
			return "login/login";
			}
		}else {
			modelMap.addAttribute("error", "Invalid username/password!! Please Re-Enter");
			return "login/login";
		}
	}
}
