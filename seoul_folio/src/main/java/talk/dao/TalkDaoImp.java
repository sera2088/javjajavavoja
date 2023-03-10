package talk.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import talk.dto.TalkPageDTO;
import talk.dto.TalkDTO;

public class TalkDaoImp implements TalkDAO {
	
	private SqlSessionTemplate sqlSession;
	
	public TalkDaoImp() {
		
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int count() {
		return sqlSession.selectOne("talk.count");
	}

	@Override
	public List<TalkDTO> list(TalkPageDTO pv) {
		System.out.println(sqlSession.selectList("talk.list", pv));
		return sqlSession.selectList("talk.list", pv);
	}
	
}//end class
