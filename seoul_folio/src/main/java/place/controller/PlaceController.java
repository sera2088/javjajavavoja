package place.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import place.dto.PageDTO;
import place.service.PlaceService;

@Controller
public class PlaceController {
	
	private PlaceService placeService;
	private PageDTO pdto;
	
	public PlaceController() {

	}
	
	public void setPlaceService(PlaceService placeService) {
		this.placeService = placeService;
	}
	
	@RequestMapping("/place/placelist.do")
	public ModelAndView listPlaceExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = placeService.countPlaceProcess();
		System.out.println("placeList의 totalRecord : " + totalRecord);
		
		if(totalRecord >= 1) {
			if (pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			System.out.println("pv 현재페이지 : " + pv.getCurrentPage());
			
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("placeList", placeService.listProcess(this.pdto));
		}
		mav.setViewName("place/placelist");
		return mav;
	}
	

}//end class
