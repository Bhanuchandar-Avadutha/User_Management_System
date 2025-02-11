package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.Model;

public class UserDao {

	public int save(User user) {
		System.out.println("This is the dao layer!!");
		System.out.println(user.getCity() + " " + user.getMobile() + " " + user.getUserId());
		int result = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Driver class loading...");

			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "pass");

			System.out.println("connection establishing....!!");

			PreparedStatement ps = connection
					.prepareStatement("insert into user (userId,userName,password,city,mobile) values(?,?,?,?,?)");

			ps.setInt(1, user.getUserId());
			ps.setString(2, user.getUserName());
			ps.setString(5, user.getMobile());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getCity());

			result = ps.executeUpdate();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("completed dao layer !!");
		return result;
	}

	public List<User> login(Integer userId) {
		List<User> list = new ArrayList<>();

		System.out.println("This is the dao layer!! -- dao layer");
		try {
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Driver class loading...");

			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "pass");

			System.out.println("connection establishing....!!");

			PreparedStatement ps = connection.prepareStatement("select * from user where userId=?");

			ps.setInt(1, userId);

			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {

				int uId = resultSet.getInt("userId");
				String password = resultSet.getString("password");
				String city = resultSet.getString("city");
				String mobile = resultSet.getString("mobile");
				User user = new User();

				user.setUserId(uId);
				user.setPassword(password);
				user.setCity(city);
				user.setMobile(mobile);
				list.add(user);
			}

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public List<User> showUserDetails() {
		List<User> list = new ArrayList<>();

		System.out.println("This is the dao layer!! -- dao layer");
		try {
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Driver class loading...");

			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "pass");

			System.out.println("connection establishing....!!");

			PreparedStatement ps = connection.prepareStatement("select * from user");

			System.out.println("get details!!");

			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {

				int uId = resultSet.getInt("userId");
				String password = resultSet.getString("password");
				String city = resultSet.getString("city");
				String mobile = resultSet.getString("mobile");
				String userName = resultSet.getString("userName");

				User user = new User();

				user.setUserId(uId);
				user.setPassword(password);
				user.setCity(city);
				user.setMobile(mobile);
				user.setUserName(userName);
				list.add(user);
			}

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<User> deleteUser(int userId) {

		List<User> list = new ArrayList<>();

		System.out.println("This is the dao layer!! --showUserDetails --dao layer");
		try {
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Driver class loading...");

			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "pass");

			System.out.println("connection establishing....!!");

			PreparedStatement ps = connection.prepareStatement("delete from user where userId=?");
			ps.setInt(1, userId);
			ps.executeUpdate();
			list = showUserDetails();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<User> editUser(int userId) {
		List<User> list = new ArrayList<>();

		System.out.println("This is the dao layer!! -- dao layer");
		try {
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Driver class loading...");

			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "pass");

			System.out.println("connection establishing....!!");
			PreparedStatement ps = connection.prepareStatement("select * from user where userId=?");
			ps.setInt(1, userId);
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {

				int uId = resultSet.getInt("userId");
				String password = resultSet.getString("password");
				String city = resultSet.getString("city");
				String mobile = resultSet.getString("mobile");
				String userName = resultSet.getString("userName");

				User user = new User();

				user.setUserId(uId);
				user.setPassword(password);
				user.setCity(city);
				user.setMobile(mobile);
				user.setUserName(userName);
				list.add(user);
			}

			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public List<User> updateUser(User user, Model m) {

		System.out.println("This is the dao layer!!");

		try {
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Driver class loading...");

			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "pass");

			System.out.println("connection establishing....!!");

			PreparedStatement ps = connection
					.prepareStatement("UPDATE user SET userName=?, password=?, city=?, mobile=? WHERE userId=?");

			ps.setInt(5, user.getUserId());
			ps.setString(1, user.getUserName());
			ps.setString(4, user.getMobile());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getCity());

			ps.executeUpdate();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("completed dao layer !!");
		return showUserDetails();

	}

}
