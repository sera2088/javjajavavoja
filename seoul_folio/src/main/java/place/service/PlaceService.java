package place.service;

import java.util.List;

import place.dto.PageDTO;
import place.dto.PlaceDTO;

public interface PlaceService {
	
	public int countPlaceProcess();
	public List<PlaceDTO> listProcess(PageDTO pv);
	
//	public void intsertPlaceProcess(PlaceDTO dto);
//	public void updatePlaceProcess(PlaceDTO dto);
//	public void deletePlaceProcess(int placeNum);
	
}
