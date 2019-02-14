package com.my.chat.Dao;

import java.util.ArrayList;

import com.my.chat.vo.Chat;
import com.my.chat.vo.Room;

public interface ChatMapper {

	public int insertRoom(Room room);

	public ArrayList<Room> selectAllRoom();

	public ArrayList<Chat> selectChat(String roomSeq);

	public int insertChat(Chat chat);
}
