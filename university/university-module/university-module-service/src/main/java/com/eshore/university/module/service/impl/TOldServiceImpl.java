package  com.eshore.university.module.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITOldService;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.university.module.pojo.TOld;
import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.university.module.dao.ITOldDAO;

/**
 * university-module-service业务接口实现
 * 
 * @author 
 * @version 1.0 
 */
@Service
@Transactional
public class TOldServiceImpl extends BaseServiceImpl<TOld> implements ITOldService {

	@Autowired
	ITOldDAO toldDAO;
	
	@Override
	public IBaseDao<TOld> getDao() {
		return (IBaseDao<TOld>)toldDAO;
	}
	
	@Override
	public List<TOld> checkLogin(TOld t) {
		return this.toldDAO.getOldsByProperty(t);
	}

	@Override
	public boolean checkUsername(String username) {
		int count = toldDAO.countUsername(username);
		if(count > 0){
			return false;
		}
		return true;
	}

	@Override
	public TOld oldLogin(TOld t) {
//		t.setPassword(PasswordCreate.getPassword(t.getPassword()));
		List<TOld> list = this.checkLogin(t);
		if(list.size() == 1){
			return list.get(0);
		}else{
			return null;
		}
	}
}