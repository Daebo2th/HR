package com.kosa.hrsystem.dao;

import com.kosa.hrsystem.dto.EmpDTO;
import com.kosa.hrsystem.utils.SqlMapConfig;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.HashMap;
import java.util.List;

public class EmpDAO {

    private SqlSessionFactory factory = SqlMapConfig.getSqlSession();

    // DB에 아이디가 존재하는지 체크
    public EmpDTO selectByEmail(HashMap<String, String> map) {
        SqlSession sqlSession =  factory.openSession();
        
        EmpDTO dto = sqlSession.selectOne("selectByEmail",map);
        sqlSession.close();
        return dto;
    }
    
    // 직원 리스트 목록 출력하기
    public List<EmpDTO> selectAllEmp() throws Exception{
    	SqlSession sqlSession = factory.openSession(true);
    	List<EmpDTO> list = sqlSession.selectList("selectAllEmp");
    	sqlSession.close();
    	return list;
    }
    
    //  직원 추가하기
    public int insertEmp(EmpDTO dto) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	int result = sqlSession.insert("insertEmp", dto);
    	sqlSession.close();
    	System.out.println(result);
    	return result;
    }
    
    // 직원 수정하기
    public int updateEmp(EmpDTO dto) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	int result = sqlSession.update("updateEmp", dto);
    	sqlSession.close();
    	System.out.println(result);
    	return result;
    }
    
    // 직원 삭제하기
    public int deleteEmp(EmpDTO dto) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	int result = sqlSession.delete("deleteEmp", dto);
    	sqlSession.close();
    	System.out.println(result);
    	return result;
    }

}
