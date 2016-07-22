package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITAdminService;
import com.eshore.university.module.pojo.TAdmin;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITAdminDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TAdminServiceImpl extends BaseServiceImpl<TAdmin> implements ITAdminService {

	@Autowired
	ITAdminDAO tadminDAO;
	
	@Override
	public IBaseDao<TAdmin> getDao() {
		return (IBaseDao<TAdmin>)tadminDAO;
	}
}