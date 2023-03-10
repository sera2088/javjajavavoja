package talk.service;

import java.util.List;

import talk.dao.TalkDAO;
import talk.dto.TalkPageDTO;
import talk.dto.TalkDTO;

public class TalkServiceImp implements TalkService {
	
	private TalkDAO talkDao;
	
	public TalkServiceImp() {

	}
	
	public void setTalkDao(TalkDAO talkDao) {
		this.talkDao = talkDao;
	}

	@Override
	public int countProcess() {
		return talkDao.count();
	}

	@Override
	public List<TalkDTO> listProcess(TalkPageDTO pv) {
		return talkDao.list(pv);
	}
		
}//end class
