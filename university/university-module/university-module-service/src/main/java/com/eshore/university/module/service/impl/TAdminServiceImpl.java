package  com.eshore.university.module.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.university.module.service.ITAdminService;
import com.eshore.university.module.util.PasswordCreate;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.khala.common.model.PageConfig;
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

	@Override
	public List<TAdmin> checkLogin(TAdmin t) {
		return this.tadminDAO.getAdminsByProperty(t);
	}

	@Override
	public boolean checkUsername(String username) {
		int count = tadminDAO.countUsername(username);
		if(count > 0){
			return false;
		}
		return true;
	}

	@Override
	public TAdmin adminLogin(TAdmin t) {
		t.setPassword(PasswordCreate.getPassword(t.getPassword()));
		List<TAdmin> list = this.checkLogin(t);
		if(list.size() == 1){
			return list.get(0);
		}else{
			return null;
		}
	}
}