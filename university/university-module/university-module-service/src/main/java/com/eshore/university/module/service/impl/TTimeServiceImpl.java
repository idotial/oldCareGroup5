package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITTimeService;
import com.eshore.university.module.pojo.TTime;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITTimeDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TTimeServiceImpl extends BaseServiceImpl<TTime> implements ITTimeService {

	@Autowired
	ITTimeDAO ttimeDAO;
	
	@Override
	public IBaseDao<TTime> getDao() {
		return (IBaseDao<TTime>)ttimeDAO;
	}
}