package com.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class UserController {

	UserService service = new UserService();

	@RequestMapping(value = "/save")
	public String save(User user, Model m) {

		System.out.println("This is the controller layer!!");
		System.out.println(user.getCity() + " " + user.getMobile() + " " + user.getUserName());
		String res = service.save(user, m);
		System.out.println("completed controller layer !!");
		return res;
	}

	@RequestMapping(value = "/login")
	public String userlogin(@RequestParam("userId") Integer userId, @RequestParam("password") String pwd,
			Model m) {

		System.out.println("This is the controller layer!! -- userLogin method");
		System.out.println(userId);
		String res = service.login(userId, pwd, m);

		return res;
	}

	@RequestMapping(value = "/showuserdetails")
	public String userlogin(Model m) {
		System.out.println("This is the controller layer!! -- userLogin method");

		List<User> list = service.showUserDetails();
		System.out.println("user details");

		m.addAttribute("userdetails", list);
		return "ShowUserDetails";
	}

	@RequestMapping(value = "/deleteuser")
	public String deleteuser(@RequestParam("userId") int userId, Model m) {
		System.out.println("This is controller layer!! -- deleteuser");
		List<User> list = service.deleteUser(userId);
		m.addAttribute("userdetails", list);
		return "ShowUserDetails";

	}

	@RequestMapping(value = "/edituser")
	public String editUser(@RequestParam("userId") int userId, Model m) {
		System.out.println("This is controller layer!! -- edituser");
		List<User> list = service.editUser(userId);
		m.addAttribute("userdetails", list.get(0));
		return "EditUser";
	}

	@RequestMapping(value = "/updateuser")
	public String updateUser(User user, Model m) {
		System.out.println("This is controller layer!! -- update user");
		List<User> list = service.updateUser(user, m);
		m.addAttribute("userdetails", list);
		return "ShowUserDetails";

	}
}
