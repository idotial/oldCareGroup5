package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITRegistService;
import com.eshore.university.module.pojo.TRegist;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITRegistDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TRegistServiceImpl extends BaseServiceImpl<TRegist> implements ITRegistService {

	@Autowired
	ITRegistDAO tregistDAO;
	
	@Override
	public IBaseDao<TRegist> getDao() {
		return (IBaseDao<TRegist>)tregistDAO;
	}
}