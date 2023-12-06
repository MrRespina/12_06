package com.ji.springP001.Member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberDAO {

	@Autowired
	private SqlSession ss;
	
	public boolean loginCheck(HttpServletRequest req) {
			
			Member m = (Member) req.getSession().getAttribute("loginCheck");
			
			if(m == null) {
				req.setAttribute("log", "login/default.jsp");
				return false;
			}else {
				req.setAttribute("log", "login/checked.jsp");
				return true;
			}

	}

	public void loginMember(Member m,HttpServletRequest req) {

		try {

			List<Member> mm = ss.getMapper(memberMapper.class).searchMember(m);
			if(mm.size() != 0) {
				
				if(mm.get(0).getM_id().equals(m.getM_id())) {
					
					if(mm.get(0).getM_pw().equals(m.getM_pw())) {
						
						req.getSession().setAttribute("loginCheck", mm.get(0));
						req.getSession().setMaxInactiveInterval(10 * 6);			
						req.setAttribute("member", mm);
						req.setAttribute("result", "로그인 성공");
						
					}else {					
						req.setAttribute("result", "로그인 실패(PW불일치)");					
					}	
				}else {			
					req.setAttribute("result", "로그인 실패(ID불일치)");		
				}			
			}else {
				req.setAttribute("result", "로그인 실패(ID없음)");					
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("member", null);
			req.setAttribute("result", "DB 오류!");
		}
		
	}
	
	public void logOutMember(HttpServletRequest req) {
		
		req.getSession().setAttribute("loginCheck", null);
		
	}

}
