package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITTermService;
import com.eshore.university.module.pojo.TTerm;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITTermDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TTermServiceImpl extends BaseServiceImpl<TTerm> implements ITTermService {

	@Autowired
	ITTermDAO ttermDAO;
	
	@Override
	public IBaseDao<TTerm> getDao() {
		return (IBaseDao<TTerm>)ttermDAO;
	}
}