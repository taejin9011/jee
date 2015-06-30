package com.homepage.web.services;

import java.util.List;

import com.homepage.web.beans.MemberBean;

public interface MemberService {
	public void join(String id, String password, String name, String age, String addr);
	public String login(String id, String password);
	public List<MemberBean> getList();
}
