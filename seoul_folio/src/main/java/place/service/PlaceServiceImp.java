package place.service;

import java.util.List;

import place.dao.PlaceDAO;
import place.dto.PageDTO;
import place.dto.PlaceDTO;

public class PlaceServiceImp implements PlaceService {

	private PlaceDAO placeDao;

	public PlaceServiceImp() {

	}

	public void setPlaceDao(PlaceDAO placeDao) {
		this.placeDao = placeDao;
	}

	@Override
	public int countPlaceProcess() {
		return placeDao.countPlace();
	}

	@Override
	public List<PlaceDTO> listProcess(PageDTO pv) {
		return placeDao.list(pv);
	}

	@Override
	public List<PlaceDTO> listProcess1(PageDTO pv) {
	     return placeDao.list1(pv);
	}

	@Override
	public List<PlaceDTO> listProcess2(PageDTO pv) {
		return placeDao.list2(pv);
	}

	@Override
	public List<PlaceDTO> listProcess3(PageDTO pv) {
		return placeDao.list3(pv);
	}

//	@Override
//	public void intsertPlaceProcess(PlaceDTO dto) {	
//			
//	}
//
//	@Override
//	public void updatePlaceProcess(PlaceDTO dto) {
//		
//	}
//
//	@Override
//	public void deletePlaceProcess(int placeNum) {
//		
//	}

}// end class
