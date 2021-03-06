package com.eshore.university.module.dao;

import java.util.List;

import com.eshore.university.module.pojo.TRoom;
import com.eshore.khala.core.data.api.dao.IBaseDao;
/**
*generated by tools 
*
*/
public interface ITRoomDAO extends IBaseDao<TRoom> {

	/**
	 * 返回当前时间 空闲的教室
	 * @param timeid
	 * @return
	 */
	public List<TRoom> getFreeRoom(String timeid);
}