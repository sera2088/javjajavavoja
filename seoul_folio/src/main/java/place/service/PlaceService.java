package place.service;

import java.util.List;

import place.dto.PageDTO;
import place.dto.PlaceDTO;

public interface PlaceService {
	
	public int countPlaceProcess();
	public List<PlaceDTO> listProcess(PageDTO pv);
	public List<PlaceDTO> listProcess1(PageDTO pv);
	public List<PlaceDTO> listProcess2(PageDTO pv);
	public List<PlaceDTO> listProcess3(PageDTO pv);
	
//	public void intsertPlaceProcess(PlaceDTO dto);
//	public void updatePlaceProcess(PlaceDTO dto);
//	public void deletePlaceProcess(int placeNum);
	
}
