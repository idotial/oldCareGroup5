package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITReturnService;
import com.eshore.university.module.pojo.TReturn;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITReturnDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TReturnServiceImpl extends BaseServiceImpl<TReturn> implements ITReturnService {

	@Autowired
	ITReturnDAO treturnDAO;
	
	@Override
	public IBaseDao<TReturn> getDao() {
		return (IBaseDao<TReturn>)treturnDAO;
	}
}