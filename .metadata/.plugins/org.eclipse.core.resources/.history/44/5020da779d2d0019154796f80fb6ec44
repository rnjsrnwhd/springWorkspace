package com.my.chat.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.chat.Dao.ChatDAO;
import com.my.chat.vo.Chat;
import com.my.chat.vo.Room;

@Controller
public class ChatController {
	
	@Autowired
	ChatDAO dao;

	@RequestMapping(value = "/goChat", method = RequestMethod.GET)
	public String goChat( Model model) {
		
		ArrayList<Room> roomList=dao.selectAllRoom();
		model.addAttribute("roomList",roomList);
		
		return "roomList";
	}
	
	@RequestMapping(value = "/goRoom", method = RequestMethod.GET)
	public String goRoom(String roomSeq, Model model) {
		//해당 방의 메세지 목록 가져오기
		model.addAttribute("roomSeq",roomSeq);
		return "room";
	}
	
	@RequestMapping(value = "/insertChat", method = RequestMethod.POST)
	public String insertChat(Chat chat, HttpSession session, Model model) {
		
		String userId=(String)session.getAttribute("userId");
		chat.setUserId(userId);
		
		dao.insertChat(chat);
		return "redirect:/goRoom?roomSeq="+chat.getRoomSeq();
	}
	
	@RequestMapping(value = "/makeRoom", method = RequestMethod.GET)
	public String makeRoom() {
		return "makeRoom";
	}
	@RequestMapping(value = "/insertRoom", method = RequestMethod.POST)
	public String insertRoom(Room room,HttpSession session) {
		
		String userId=(String)session.getAttribute("userId");
		room.setUserId(userId);
		
		dao.insertRoom(room);
		
		return "redirect:/goChat";
	}
	
}
