package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITClassService;
import com.eshore.university.module.pojo.TClass;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITClassDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TClassServiceImpl extends BaseServiceImpl<TClass> implements ITClassService {

	@Autowired
	ITClassDAO tclassDAO;
	
	@Override
	public IBaseDao<TClass> getDao() {
		return (IBaseDao<TClass>)tclassDAO;
	}
}