package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITChangeService;
import com.eshore.university.module.pojo.TChange;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITChangeDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TChangeServiceImpl extends BaseServiceImpl<TChange> implements ITChangeService {

	@Autowired
	ITChangeDAO tchangeDAO;
	
	@Override
	public IBaseDao<TChange> getDao() {
		return (IBaseDao<TChange>)tchangeDAO;
	}
}