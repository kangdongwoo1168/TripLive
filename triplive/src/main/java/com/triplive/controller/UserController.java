package com.triplive.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.triplive.entity.Country;
import com.triplive.entity.User;
import com.triplive.service.UserService;
import com.triplive.service.UserServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("user")
@Log4j2
public class UserController {

    @Autowired
	private UserServiceImpl userService;

    @RequestMapping("/register.do")
    public String register(User user, Long isoNum){
        log.info("회원가입 시도 : " + user);

        // isoNum은 넘어오는데 자동으로 매핑이 안되서 강제로 값을 전달하기 위한 작업
        Country country = new Country();
        country.setIsoNum(isoNum);
        user.setCountry(country);

        userService.saveUser(user);
        return "redirect:../index.do";
    }

    // 아래에 해당하는 부분은 security 설정에서 진행함
    // @RequestMapping("/login.do")
    // public String login(User user, String cache, HttpServletRequest request){

    //     log.info("login 시도");
    //     log.info("로그인 요청 유저 정보 : " + user);
    //     log.info("로그인 정보 저장 여부 : " + cache);

    //     // 아이디로 일단 가져오기
    //     User member = userService.getUser(user);
    //     log.info("아이디 조회 : " + member);

    //     // 암호화 형태로 변환
    //     BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    //     log.info("암호화 비밀번호와 비교 : " + encoder.matches(user.getPassword(), member.getPassword()));

    //     // 패스워드가 동일시에 세션 할당
    //     if(encoder.matches(user.getPassword(), member.getPassword())){
    //         member.setPassword(""); // 세션 내 비밀번호 전처리
    //         request.setAttribute("user", member);
    //         log.info("로그인 진행 및 세션 할당");
    //         return "redirect:../index.do";
    //     } else {
    //         request.setAttribute("user", "failed");
    //         log.info("비밀번호 불일치");
    //         return "redirect:login_resist_form.do";
    //     }
        
    // }

    @GetMapping(value = "logout.do")
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        log.info("로그아웃 시도");
        new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
        return "redirect:../index.do";
    }

    // id check를 위한 메서드
	@RequestMapping(value = "checkId.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String checkId(String id) {
		log.info("아이디 체크 : " + id);
		return !userService.checkId(id) ? "true" : "false"; // DB에 없으면 해당 메일 사용 가능
	}

    // 일반적인 페이지 이동
    @RequestMapping("/{step}.do")
    public String insertBoard(@PathVariable String step, HttpServletRequest request) {
        log.info(step + " 요청");
        return "user/"+step;
    }
}
