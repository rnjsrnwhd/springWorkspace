package com.my.chat.Dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession session;

	public int join(HashMap<String, String> map) {
		int result = 0;

		MemberMapper mapper = session.getMapper(MemberMapper.class);
		try {
			result = mapper.join(map);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}

	public String login(HashMap<String, String> map) {

		String result = null;

		MemberMapper mapper = session.getMapper(MemberMapper.class);
		try {
			result = mapper.login(map);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;

	}

}
