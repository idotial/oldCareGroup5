package  com.eshore.university.module.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITRoomService;
import com.eshore.university.module.pojo.TRoom;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITRoomDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TRoomServiceImpl extends BaseServiceImpl<TRoom> implements ITRoomService {

	@Autowired
	ITRoomDAO troomDAO;
	
	@Override
	public IBaseDao<TRoom> getDao() {
		return (IBaseDao<TRoom>)troomDAO;
	}
}