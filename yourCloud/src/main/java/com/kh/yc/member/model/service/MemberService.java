package com.kh.yc.member.model.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.security.auth.login.LoginException;

import com.kh.yc.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);
	
	public int CheckDuplication(String inputId);

	public String findId(String email);
	int updatePwd(Member model);
}
