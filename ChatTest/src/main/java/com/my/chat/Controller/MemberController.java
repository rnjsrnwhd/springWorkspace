package com.my.chat.Controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.chat.Dao.MemberDAO;

@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;

	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoin() {
		return "memberJoin";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(String id, String pw) {

		HashMap<String, String> member = new HashMap<String, String>();
		member.put("id", id);
		member.put("pw", pw);

		int result = dao.join(member);
		if (result == 0) {
			return "redirect:/memberJoin";
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String id, String pw, Model model, HttpSession session) {

		HashMap<String, String> member = new HashMap<String, String>();
		member.put("id", id);
		member.put("pw", pw);

		String userId = dao.login(member);

		if (userId == null) {// 로그인 실패
			model.addAttribute("message", "로그인실패");
		} else {// 로그인성공
			session.setAttribute("userId", userId);
		}
		return "home";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
