package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITCourseService;
import com.eshore.university.module.pojo.TCourse;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITCourseDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TCourseServiceImpl extends BaseServiceImpl<TCourse> implements ITCourseService {

	@Autowired
	ITCourseDAO tcourseDAO;
	
	@Override
	public IBaseDao<TCourse> getDao() {
		return (IBaseDao<TCourse>)tcourseDAO;
	}
}