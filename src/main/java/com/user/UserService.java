package com.user;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class UserService {

	UserDao dao = new UserDao();

	public String save(User user, Model m) {

		System.out.println("This is the service layer!!");
		System.out.println(user.getCity() + " " + user.getMobile() + " " + user.getUserName());
		int res = dao.save(user);
		System.out.println("completed service layer !!");
		if (res == 1) {
			m.addAttribute("message", "User Register successfully!!");

			return "Login";
		}
		m.addAttribute("msg", "User Register not successfully!! Please try again later!!");
		return "Register";
	}

	public String login(Integer userId, String pwd, Model model) {
		System.out.println("This is the service layer!!--login method");
		System.out.println(userId + " " + pwd);
		List<User> list = dao.login(userId);
		if (list.isEmpty()) {
			System.out.println("List is Empty!! --service Layer");
			model.addAttribute("msg", "User does not exist!! please try to register first!!");
			return "Register";
		}
		if (list.get(0).getPassword().equalsIgnoreCase(pwd)) {
			System.out.println("User logged In !! --service layer");
			model.addAttribute("msg", "User Log-In Successfully!!");
			return "Profile";

		}
		System.out.println("Password mismatched--service layer");
		model.addAttribute("msg", "Please enter correct password!!");
		return "Login";
	}

	public List<User> showUserDetails() {
		System.out.println("This service layer!! -- ShowUserDetails Method");
		List<User> list = dao.showUserDetails();
		System.out.println("service layer details!!");

		return list;

	}

	public List<User> deleteUser(int userId) {
		System.out.println("This service layer!! -- deleteuser method");
		List<User> list = dao.deleteUser(userId);
		return list;
	}

	public List<User> editUser(int userId) {
		System.out.println("This is service layer!! -- edituser method");
		List<User> list = dao.editUser(userId);
		return list;
	}

	public List<User> updateUser(User user, Model m) {
		System.out.println("This is service layer!! -- updatecustomer details");
		List<User> list = dao.updateUser(user, m);
		return list;

	}
}
