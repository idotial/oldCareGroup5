package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TRoom;

/**
 * 
 */
public interface ITRoomService extends IBaseService<TRoom> {

	/***
	 * 查询当前时间 空闲的教室
	 * @param timeid
	 * @return
	 */
	public List<TRoom> getFreeRoom(String timeid);
}