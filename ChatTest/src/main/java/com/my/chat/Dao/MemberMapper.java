package com.my.chat.Dao;

import java.util.HashMap;

public interface MemberMapper {

	public int join(HashMap<String, String> map);
	public String login(HashMap<String, String> map);
	
}
