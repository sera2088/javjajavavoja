package place.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import place.dto.PageDTO;
import place.dto.PlaceDTO;

public class PlaceDaoImp implements PlaceDAO{
	private SqlSessionTemplate sqlSession;

	public PlaceDaoImp() {

	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int countPlace() {
		return sqlSession.selectOne("place.count");
	}

	@Override
	public List<PlaceDTO> list(PageDTO pv) {
		return sqlSession.selectList("place.list", pv);
	}
//
//	@Override
//	public void insertPlace(PlaceDTO dto) {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public void updatePlace(PlaceDTO dto) {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public void deletePlace(int placeNum) {
//		// TODO Auto-generated method stub
//
//	}
}//end class
