package com.kosa.hrsystem.dao;

import com.kosa.hrsystem.dto.CertificateDTO;
import com.kosa.hrsystem.dto.EmpDTO;
import com.kosa.hrsystem.utils.SqlMapConfig;
import com.kosa.hrsystem.vo.MyPageVO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EmpDAO {

    private SqlSessionFactory factory = SqlMapConfig.getSqlSession();

    public int checkEmail(String email) {
        SqlSession sqlSession =  factory.openSession();
        
        int result = sqlSession.selectOne("checkEmail",email);
        sqlSession.close();
        return result;
    }
    
    // DB에 아이디가 존재하는지 체크
    public EmpDTO selectByEmail(HashMap<String, String> map) {
        SqlSession sqlSession =  factory.openSession(true);
        
        EmpDTO dto = sqlSession.selectOne("selectByEmail",map);
        sqlSession.close();
        return dto;
    }
    
    // 아이디(이메일) 찾기
    public String searchId(HashMap<String, String> map) {
    	SqlSession sqlSession = factory.openSession(true);
    	
    	String email = sqlSession.selectOne("searchId",map); 
    	sqlSession.close();
    	return email;
	}
    
    // 패스워드 찾기
    public String searchPwd(HashMap<String, String> map) {
    	SqlSession sqlSession = factory.openSession(true);
    	
    	String pwd = sqlSession.selectOne("searchPwd",map); 
    	sqlSession.close();
    	return pwd;
	}
    
    // 패스워드 재설정
    public int updatePwd(HashMap<String,String> map) {
    	SqlSession sqlSession = factory.openSession(true);
    	
    	int result = sqlSession.update("updatePwd",map); 
    	sqlSession.close();
    	return result;
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
    	return result;
    }
    
    // 직원 수정하기
    public int updateEmp(EmpDTO dto) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	int result = sqlSession.update("updateEmp", dto);
    	sqlSession.close();
    	return result;
    }
    
    // 직원 삭제하기
    public int deleteEmp(int emp_num) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	int result = sqlSession.delete("deleteEmp", emp_num);
    	sqlSession.close();
    	return result;
    }
    
    // 마이페이지 정보 출력하기
    public MyPageVO selectOneUser(int empNum) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	MyPageVO list = sqlSession.selectOne("selectOneUser", empNum);
    	List<CertificateDTO> clist = sqlSession.selectList("selectCert", empNum);
    	list.setCert(clist);
    	sqlSession.close();
    	return list;
    }
    
    
    // 마이페이지 개인정보 수정하기
    public int updateOneUser(EmpDTO dto) throws Exception {
    	SqlSession sqlSession = factory.openSession(true);
    	int result = sqlSession.update("updateOneUser", dto);
    	sqlSession.close();
    	return result;
    }
}
