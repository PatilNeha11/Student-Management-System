
package com.jspiders.smswithspringmvcpractice.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.smswithspringmvcpractice.pojo.AdminPOJO;
import com.jspiders.smswithspringmvcpractice.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(path = "/add_admin", method = RequestMethod.GET)
	public String getPageToAddAdmin(ModelMap modelMap) {
		List<AdminPOJO> admins = adminService.getAllAdmins();
		if (admins.size() < 3) {
			return "add_admin";
		} else {
			modelMap.addAttribute("message", "Admins already exist");
			return "log_in";
		}
	}

	@RequestMapping(path = "/add_admin", method = RequestMethod.POST)
	public String addAdmin(@RequestParam String userName, @RequestParam String email, @RequestParam String password,
			ModelMap modelMap) {
		adminService.addAdmin(userName, email, password);
		modelMap.addAttribute("message", "Signed up");
		return "log_in";
	}

	@RequestMapping(path = "/log_in", method = RequestMethod.GET)
	public String getLogInPage() {
		return "log_in";
	}

	@RequestMapping(path = "/log_in", method = RequestMethod.POST)
	public String logIn(@RequestParam String email, @RequestParam String password, ModelMap modelMap,
			HttpSession httpSession) {
		AdminPOJO admin = adminService.logIn(email, password);
		if (admin != null) {
			httpSession.setAttribute("admin", admin);
			httpSession.setMaxInactiveInterval(1800);
			modelMap.addAttribute("message", "Logged in");
			modelMap.addAttribute("admin", email);
			return "welcome";
		} else {
			modelMap.addAttribute("message", "Invalid Email or Password");
			return "log_in";
		}
	}

	@RequestMapping(path = "/delete_admin", method = RequestMethod.GET)
	public String deleteAdmin(@RequestParam String email, ModelMap modelMap, HttpSession httpSession) {
		AdminPOJO admin = (AdminPOJO) httpSession.getAttribute("admin");
		if (admin != null) {
			adminService.deleteAdmin(email);
			modelMap.addAttribute("message", "Admin deleted");
		}
		return "log_in";
	}

	@RequestMapping(path = "/log_out", method = RequestMethod.GET)
	public String logOut(HttpSession httpSession) {
		httpSession.invalidate();
		return "log_in";
	}

}