package com.my.chat.Dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.chat.vo.Chat;
import com.my.chat.vo.Room;

@Repository
public class ChatDAO {

	@Autowired
	SqlSession session;

	public int insertRoom(Room room) {
		int result = 0;
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		result = mapper.insertRoom(room);
		return result;
	}

	public ArrayList<Room> selectAllRoom() {
		ArrayList<Room> roomList = null;
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		roomList = mapper.selectAllRoom();
		return roomList;
	}

	public ArrayList<Chat> selectChat(String roomSeq) {
		ArrayList<Chat> chatList = null;
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		chatList = mapper.selectChat(roomSeq);
		return chatList;
	}

	public int insertChat(Chat chat) {
		int result = 0;
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		result = mapper.insertChat(chat);
		return result;
	}
}
