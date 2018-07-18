package com.global.mapper;

import java.util.List;
import java.util.Map;

import com.global.pojo.House;
import com.global.pojo.Order;
import com.global.pojo.OrderHouse;
import com.global.pojo.Suggestion;
import com.global.pojo.User;

/** 
 * ��Ϊ DAO�Ľӿ� 
 * @author 
 */
public interface UserMapper {

	/*
	 * �ӿ�
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
	//���ݷ��ݵ����δ��˲�ѯ����
	public List<House> HouseByrent_status();
	//�޸ķ��ݵ����״̬
	public int updateHouseRent_Status(String roomname);
	//�޸ķ��ݳɿ���״̬
	public int updateHouseCanRent(String roomname);
	//�޸ķ��ݳɲ�����״̬
	public int updateHouseCanNotRent(String roomname);
	//�޸ķ��ݵı������
	public int updateHouseRent_Num(String roomname);
	//��ѯ���ݱ������ǰ3�ķ���
	public List<House> queryHouseFirstThree();
	public int updateUser_OrderStatus(Map<String,String> map);
	public List<House> getAllHouse();
}
