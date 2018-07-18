package com.global.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.global.mapper.UserMapper;
import com.global.pojo.House;
import com.global.pojo.Order;
import com.global.pojo.OrderHouse;
import com.global.pojo.Suggestion;
import com.global.pojo.User;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	
	@Autowired
	private UserMapper userMapper;

	/*
	 * µÇÂ¼
	 */
	@Override
	public User login(Map<String,String> map) {
		// TODO Auto-generated method stub
		return userMapper.login(map);
	}

	/*
	 * ²éÑ¯¶©µ¥
	 */
	@Override
	public List<Order> getOrder(Map<String,String> map) {
		// TODO Auto-generated method stub
		return userMapper.getOrder(map);
	}

	@Override
	public void RegisterUser(Map<String,String> map) {
		// TODO Auto-generated method stub
		
		userMapper.RegisterUser(map);
	}

	@Override
	public User getByTel(Map<String,String> map) {
		// TODO Auto-generated method stub
		return userMapper.getByTel(map);
	}

	@Override
	public House getHouse(Map<String,String> map) {
		// TODO Auto-generated method stub
		return userMapper.getHouse(map);
	}

	@Override
	public List<House> getHoueByLandlord(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.getHoueByLandlord(map);
	}

	@Override
	public Order getOrderByName(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.getOrderByName(map);
	}

	@Override
	public List<OrderHouse> getHouseByRenter(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.getHouseByRenter(map);
	}

	@Override
	public void userSuggestion(Map<String, String> map) {
		// TODO Auto-generated method stub
		userMapper.userSuggestion(map);
	}

	@Override
	public OrderHouse getHouse_Order(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.getHouse_Order(map);
	}

	@Override
	public void cancel_Single(Map<String, String> map) {
		// TODO Auto-generated method stub
		userMapper.cancel_Single(map);
	}

	@Override
	public List<OrderHouse> getHouse_Land(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.getHouse_Land(map);
	}

	@Override
	public User getUser(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.getUser(map);
	}

	@Override
	public void SystemDelet(Map<String, String> map) {
		// TODO Auto-generated method stub
		userMapper.SystemDelet(map);
	}

	@Override
	public int addHouse(House house) {
		// TODO Auto-generated method stub
		return userMapper.addHouse(house);
	}

	@Override
	public House queryHouseByRoomname(String roomname) {
		// TODO Auto-generated method stub
		return userMapper.queryHouseByRoomname(roomname);
	}

	@Override
	public List<House> queryHouseByCity(String city) {
		// TODO Auto-generated method stub
		return userMapper.queryHouseByCity(city);
	}

	@Override
	public List<House> queryHouseByCityTypePrice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.queryHouseByCityTypePrice(map);
	}

	@Override
	public int addOrder(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.addOrder(map);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateUser(user);
	}

	@Override
	public List<House> HouseByrent_status() {
		// TODO Auto-generated method stub
		return userMapper.HouseByrent_status();
	}

	@Override
	public int updateHouseRent_Status(String roomname) {
		// TODO Auto-generated method stub
		return userMapper.updateHouseRent_Status(roomname);
	}

	@Override
	public int updateHouseCanRent(String roomname) {
		// TODO Auto-generated method stub
		return userMapper.updateHouseCanRent(roomname);
	}

	@Override
	public int updateHouseCanNotRent(String roomname) {
		// TODO Auto-generated method stub
		return userMapper.updateHouseCanNotRent(roomname);
	}

	@Override
	public int updateHouseRent_Num(String roomname) {
		// TODO Auto-generated method stub
		return userMapper.updateHouseRent_Num(roomname);
	}

	@Override
	public List<House> queryHouseFirstThree() {
		// TODO Auto-generated method stub
		return userMapper.queryHouseFirstThree();
	}

	@Override
	public int updateUser_OrderStatus(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userMapper.updateUser_OrderStatus(map);
	}

	@Override
	public List<House> getAllHouse() {
		// TODO Auto-generated method stub
		return userMapper.getAllHouse();
	}

	@Override
	public List<Suggestion> querySuggestion() {
		// TODO Auto-generated method stub
		return userMapper.querySuggestion();
	}
}
