package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITNoticeService;
import com.eshore.university.module.pojo.TNotice;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITNoticeDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TNoticeServiceImpl extends BaseServiceImpl<TNotice> implements ITNoticeService {

	@Autowired
	ITNoticeDAO tnoticeDAO;
	
	@Override
	public IBaseDao<TNotice> getDao() {
		return (IBaseDao<TNotice>)tnoticeDAO;
	}
}