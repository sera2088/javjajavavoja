package talk.dao;

import java.util.List;


import talk.dto.TalkDTO;
import talk.dto.TalkPageDTO;

public interface TalkDAO {
	
	public int count();
	public List<TalkDTO> list(TalkPageDTO pv);
}
