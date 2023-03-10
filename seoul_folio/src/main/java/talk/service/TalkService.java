package talk.service;

import java.util.List;

import talk.dto.TalkPageDTO;
import talk.dto.TalkDTO;

public interface TalkService {
	
	public int countProcess();
	public List<TalkDTO> listProcess(TalkPageDTO pv);
	
}
