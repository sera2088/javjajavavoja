package talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import talk.dto.TalkPageDTO;
import talk.service.TalkService;

// http://localhost:8090/myapp/talk/list.do

@Controller
public class TalkController {
	
	private TalkService talkService;
	private talk.dto.TalkPageDTO tpdto;
	
	public TalkController() {

	}
	
	public void setTalkService(TalkService talkService) {
		this.talkService = talkService;
	}
	
	@RequestMapping("/talk/list.do")
	public ModelAndView listExecute(@ModelAttribute("pv") TalkPageDTO pv, ModelAndView mav) {
		int totalRecord = talkService.countProcess();
		System.out.println("talkboard의 totalRecord : " + totalRecord);
		
		if(totalRecord >= 1) {
			if (pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			System.out.println("pv 현재페이지 : " + pv.getCurrentPage());
			
			this.tpdto = new talk.dto.TalkPageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.tpdto);
			mav.addObject("talkList", talkService.listProcess(this.tpdto));
			
			System.out.println("data : "+talkService.listProcess(this.tpdto));
		}
		mav.setViewName("/talk/list");
		return mav;
	}

}//end class
