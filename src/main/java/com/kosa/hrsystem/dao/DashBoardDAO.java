package com.kosa.hrsystem.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kosa.hrsystem.utils.SqlMapConfig;
import com.kosa.hrsystem.vo.DashBoardVO;

public class DashBoardDAO {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();

	public List<DashBoardVO> selectAttCnt() throws Exception{
		SqlSession sqlSession = factory.openSession(true);
		List<DashBoardVO> list = sqlSession.selectList("selectAttCount");
		sqlSession.close();
		return list;
	}

	public List<DashBoardVO> selectNotAttCnt() {
		SqlSession sqlSession = factory.openSession(true);
		List<DashBoardVO> list = sqlSession.selectList("selectNotAttCount");
		sqlSession.close();
		return list;
	}

	public List<DashBoardVO> selectLeaveCnt() {
		SqlSession sqlSession = factory.openSession(true);
		List<DashBoardVO> list = sqlSession.selectList("selectLeaveCount");
		sqlSession.close();
		return list;
	}

	public List<DashBoardVO> selectVacCnt() {
		SqlSession sqlSession = factory.openSession(true);
		List<DashBoardVO> list = sqlSession.selectList("selectVacCount");
		sqlSession.close();
		return list;
	}
	
}