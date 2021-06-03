package com.multi.member;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.member.Pitcher01.Pitcher01Service;
import com.multi.member.Pitcher01.Pitcher01VO;
import com.multi.member.hitter01.Hitter01Service;
import com.multi.member.hitter01.hitter01VO;

@Controller
public class MemberController {

	@Autowired
	private JoinService joinService;

	@Autowired
	private Hitter01Service hitter01Service;
	
	@Autowired
	private Pitcher01Service Pitcher01Service;
	
	// 메인 페이지
	@RequestMapping("/") // 메인페이지
	public String mainPage() {
		return "index"; // index.jsp
	}
//---------------------------------------------------------
	@RequestMapping("/baseball")	// 야구-타자
	public String baseball(Model model) {
		ArrayList<hitter01VO> hitter01List = hitter01Service.hitter01List();
		model.addAttribute("hitter01List",hitter01List);
		return "baseball";
	}
	
	@RequestMapping("/baseball2")	// 야구-투수
	public String baseball2(Model model) {
		ArrayList<Pitcher01VO> pitcher01List = Pitcher01Service.pitcher01List();
		model.addAttribute("pitcher01List",pitcher01List);
		return "baseball2";
	}
	

//---------------------------------------------------------
	@RequestMapping("/Football") // 축구
	public String Football() {
		return "Football";
	}

	@RequestMapping("/basketball") // 농구
	public String basketball() {
		return "basketball";
	}

	@RequestMapping("/volleyball") // 배구
	public String volleyball() {
		return "volleyball";
	}
//---------------------------------------------------------
	@RequestMapping("/Login")
	public String Login() {
		return "/Login";
	}

	// 회원가입 페이지로 이동
	@RequestMapping("/btn_join")
	public String JoinMember() {
		return "join"; // join.jsp
	}

	// 회원 정보 기입
	@RequestMapping("/insertJoinMember")
	public String InsertJoinMember(JoinVO join) {
		joinService.insertJoin(join);
		return "redirect:./"; // main페이지로 이동
	}

	// 모든 가입 회원 정보
	@RequestMapping("/joinMemberList")
	public String AllMemberList(Model model) {
		ArrayList<JoinVO> joinList = joinService.joinList();
		model.addAttribute("joinList", joinList);
		return "All_joinMemberView";
	}

	// ID중복 체크
	@ResponseBody
	@RequestMapping("/joinidCheck")
	public int idCehck(@RequestParam("joID") String id) {
		JoinVO vo = joinService.idCheck(id);
		int result = 0;
		if (vo != null)
			result = 1;
		return result;
	}

}
