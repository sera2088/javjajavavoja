package place.dao;

import java.util.List;


import place.dto.PageDTO;
import place.dto.PlaceDTO;

public interface PlaceDAO {
    public int countPlace();
    public List<PlaceDTO> list(PageDTO pv);
    public List<PlaceDTO> list1(PageDTO pv);
    public List<PlaceDTO> list2(PageDTO pv);
    public List<PlaceDTO> list3(PageDTO pv);
//    public void insertPlace(PlaceDTO dto);
//    
//    public void updatePlace(PlaceDTO dto);
//	public void deletePlace(int placeNum);
}
