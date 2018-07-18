package com.global.mapper;

import java.util.List;
import java.util.Map;

import com.global.pojo.House;
import com.global.pojo.Order;
import com.global.pojo.OrderHouse;
import com.global.pojo.Suggestion;
import com.global.pojo.User;

/** 
 * 做为 DAO的接口 
 * @author 
 */
public interface UserMapper {

	/*
	 * 接口
	 */
	public User login(Map<String,String> map);
	public void SystemDelet(Map<String, String> map);
	public int addHouse(House house);
	public House queryHouseByRoomname(String roomname);
	public List<House> queryHouseByCity(String city);
	public List<House> queryHouseByCityTypePrice(Map<String,Object> map);
	public int addOrder(Map<String,Object> map);
	public User getUser(Map<String,String> map);
	public int updateUser(User user); 
	public Order getOrderByName(Map<String,String> map);
	public List<Order> getOrder(Map<String,String> map);
	public void RegisterUser(Map<String,String> map);
	public User getByTel(Map<String,String> map);
	public House getHouse(Map<String,String> map);
	public OrderHouse getHouse_Order(Map<String,String> map);
	public void cancel_Single(Map<String,String> map);
	//public List<House> getHouse(Map<String,String> map);
	//public House getHoueByLandlord(Map<String,String> map);
	public List<House> getHoueByLandlord(Map<String,String> map);
	public List<OrderHouse> getHouseByRenter(Map<String,String> map);
	public List<OrderHouse> getHouse_Land(Map<String,String> map);
	public void userSuggestion(Map<String,String> map);
	public List<Suggestion> querySuggestion();
	//根据房屋的审核未审核查询房屋
	public List<House> HouseByrent_status();
	//修改房屋的审核状态
	public int updateHouseRent_Status(String roomname);
	//修改房屋成可租状态
	public int updateHouseCanRent(String roomname);
	//修改房屋成不可租状态
	public int updateHouseCanNotRent(String roomname);
	//修改房屋的被租次数
	public int updateHouseRent_Num(String roomname);
	//查询房屋被租次数前3的房子
	public List<House> queryHouseFirstThree();
	public int updateUser_OrderStatus(Map<String,String> map);
	public List<House> getAllHouse();
}
