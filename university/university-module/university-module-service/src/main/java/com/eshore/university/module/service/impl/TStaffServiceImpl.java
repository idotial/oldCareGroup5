package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITStaffService;
import com.eshore.university.module.pojo.TStaff;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITStaffDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TStaffServiceImpl extends BaseServiceImpl<TStaff> implements ITStaffService {

	@Autowired
	ITStaffDAO tstaffDAO;
	
	@Override
	public IBaseDao<TStaff> getDao() {
		return (IBaseDao<TStaff>)tstaffDAO;
	}
}