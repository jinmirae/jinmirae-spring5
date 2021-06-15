package com.edu.util;

import org.springframework.stereotype.Component;

/**
 * 이 클래스는 이 프로젝트에서 공통으로 사용하는 유틸리티기능을 모아놓은 클래스.
 * @author 진미래
 * 컨트롤러 기능 @Controller(jsp와 바인딩명시)
 * 콤포턴트 @Componet는 다른 MVC가 아닌 기능을 모아놓은 스프링빈 메서드
 */
@Component
public class CommonUtil {
	//RestAPI서버 맛보기ID중복체크(제대로 만들면 @RestController 사용)
	@RequestMapping(value="id_check", method=RequestMethod.GET)
	public 
}
