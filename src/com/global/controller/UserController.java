package com.global.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.global.ImageUtil.ImageTool;
import com.global.md5.PwdtoMD5;
import com.global.pojo.House;
import com.global.pojo.Order;
import com.global.pojo.Suggestion;
import com.global.pojo.OrderHouse;
import com.global.pojo.User;
import com.global.service.UserService;

@Controller()
@RequestMapping("")
public class UserController {

	private ModelAndView mv = new ModelAndView();
	@Autowired
	private UserService userService;
	private User getuser;
	private List<OrderHouse> orderhouse;
	private OrderHouse singleHouse;
	private Suggestion suggestion;
	
	/*
	 * 跳转主页
	 */
	@RequestMapping("/index")
	public ModelAndView Index(HttpServletRequest request,Model model,HttpSession session){
		
		List<House> firstThreeHouseList = userService.queryHouseFirstThree();
		session.setAttribute("firstThreeHouseList", firstThreeHouseList);
		mv.setViewName("/index");
		return mv;
		//return "/index";
	}
	
	/*
	 * 跳转登录页面
	 */
	@RequestMapping("/login")
	public String Login(HttpServletRequest request,Model model){
		
		
		return "/login";
	}
	
	/*
	 * 跳转注册页面
	 */
	@RequestMapping("/register")
	public String Regis(HttpServletRequest request,Model model){
		
		
		return "/register";
	}
	
	/*
	 * 跳转租房页面
	 */
	@RequestMapping("/buy")
	public String Rent(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException{
		
		getuser=(User) session.getAttribute("user");
	    if(getuser==null){
	    	try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您尚未登录!');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在buy_if里"+request.getParameter("name"));
			return "/login";
	    }else{
				List<House> rentHouseList=userService.getAllHouse();
				if(rentHouseList.size()>0) {
					//System.out.println("test_getAllHouse_rentHouseList"+map);
					request.setAttribute("rentHouseList", rentHouseList);
				}
				else {
					 response.setContentType("text/html;charset=UTF-8");
					 PrintWriter out = response.getWriter();
					 out.print("<script type='text/javascript'>alert('系统提示：连接错误!');"
					 		+ "document.location.href='buy';</script>");
					 out.flush();
					 out.close();
				}
	    	return "/buy";
	    }
	}
	
	/*
	 * 跳转房屋创建界面
	 */
	@RequestMapping("/create_home")
	public String Create(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		
		getuser=(User) session.getAttribute("user");
	    if(getuser==null){
	    	try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您尚未登录!');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在create_if里"+request.getParameter("name"));
			return "/login";
	    }else{
	    	return "/create_home";
	    }
	}
	
	/*
	 * 跳转进行房屋创建
	 */
	@RequestMapping("/docreate_home")
    public ModelAndView create_Home(@RequestParam(value="roomname",required=false)String roomname,
			@RequestParam(value="price",required=false)String price,
			@RequestParam(value="room_num",required=false)String room_num,
			@RequestParam(value="city",required=false)String city,
			@RequestParam(value="room_type",required=false)String room_type,
			@RequestParam(value="duration",required=false)String duration,
			@RequestParam(value="address",required=false)String address,
			@RequestParam(value="description",required=false)String description,
			@RequestParam(value="file1",required=false)MultipartFile file1,
			@RequestParam(value="file2",required=false)MultipartFile file2,
			@RequestParam(value="file3",required=false)MultipartFile file3,
			@RequestParam(value="file4",required=false)MultipartFile file4,
			HttpServletResponse response,HttpSession session,HttpServletRequest request) throws Exception {
		
	    	response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			User user = (User)session.getAttribute("user");
			Double price1 = Double.parseDouble(price);
			int room_num1 = Integer.parseInt(room_num);
			
			//使用UUID给图片重命名，并去掉四个“-”
			String name1 = UUID.randomUUID().toString().replaceAll("-", "");
			String name2 = UUID.randomUUID().toString().replaceAll("-", "");
			String name3 = UUID.randomUUID().toString().replaceAll("-", "");
			String name4 = UUID.randomUUID().toString().replaceAll("-", "");
			//获取文件的扩展名
			String ext1 = FilenameUtils.getExtension(file1.getOriginalFilename());
			String ext2 = FilenameUtils.getExtension(file2.getOriginalFilename());
			String ext3 = FilenameUtils.getExtension(file3.getOriginalFilename());
			String ext4 = FilenameUtils.getExtension(file4.getOriginalFilename());
			//设置图片上传路径
			String url = "E:\\Image_Url\\upload\\original_picture";
			//以绝对路径保存重名命后的图片
			file1.transferTo(new File(url+"/"+name1 + "." + ext1));
			file2.transferTo(new File(url+"/"+name2 + "." + ext2));
			file3.transferTo(new File(url+"/"+name3 + "." + ext3));
			file4.transferTo(new File(url+"/"+name4 + "." + ext4));
			//图片保存的路径
			String filePath1 = url+"\\"+name1+"."+ext1;
			String filePath2 = url+"\\"+name2+"."+ext2;
			String filePath3 = url+"\\"+name3+"."+ext3;
			String filePath4 = url+"\\"+name4+"."+ext4;
			//以绝对路径保存重名命后的图片
			file1.transferTo(new File(url+"/"+name1 + "." + ext1));
			file2.transferTo(new File(url+"/"+name2 + "." + ext2));
			file3.transferTo(new File(url+"/"+name3 + "." + ext3));
			file4.transferTo(new File(url+"/"+name4 + "." + ext4));
			//对图片进行压缩处理并重新写入内存中(压缩成900*420)
			ImageTool.getFixedIcon(filePath1 , 900, 420);
			ImageTool.getFixedIcon(filePath2 , 900, 420);
			ImageTool.getFixedIcon(filePath3 , 900, 420);
			ImageTool.getFixedIcon(filePath4 , 900, 420);
			//对图片进行压缩处理并重新写入内存中(压缩成640*434)
			ImageTool.getFixedIcon(filePath1 , 640, 434);
			ImageTool.getFixedIcon(filePath2 , 640, 434);
			ImageTool.getFixedIcon(filePath3 , 640, 434);
			ImageTool.getFixedIcon(filePath4 , 640, 434);
			//对图片进行压缩处理并重新写入内存中(压缩成420*316)
			ImageTool.getFixedIcon(filePath1 , 420, 316);
			ImageTool.getFixedIcon(filePath2 , 420, 316);
			ImageTool.getFixedIcon(filePath3 , 420, 316);
			ImageTool.getFixedIcon(filePath4 , 420, 316);
			//对图片进行压缩处理并重新写入内存中(压缩成400*300)
			ImageTool.getFixedIcon(filePath1 , 400, 300);
			ImageTool.getFixedIcon(filePath2 , 400, 300);
			ImageTool.getFixedIcon(filePath3 , 400, 300);
			ImageTool.getFixedIcon(filePath4 , 400, 300);
			//对图片进行压缩处理并重新写入内存中(压缩成300*200)
			ImageTool.getFixedIcon(filePath1 , 300, 200);
			ImageTool.getFixedIcon(filePath2 , 300, 200);
			ImageTool.getFixedIcon(filePath3 , 300, 200);
			ImageTool.getFixedIcon(filePath4 , 300, 200);
			//把图片存储路径保存到数据库
			String imageURL1 = name1 + "." + ext1;
			String imageURL2 = name2 + "." + ext2;
			String imageURL3 = name3 + "." + ext3;
			String imageURL4 = name4 + "." + ext4;
			
					        
	        House house = new House(roomname,price1,address,description,room_num1,duration,
	    			room_type,0,user.getUsername(),0,imageURL1,imageURL2,imageURL3,imageURL4,city,"待审核");
	        
	        int j = userService.addHouse(house);
	        if(j>0) {
	        	out.print("<script type='text/javascript'>alert('创建房屋成功,等待管理员审核中!');"
	        	+ "document.location.href='myroom';</script>");
	        }
	        else {
	        	out.print("<script type='text/javascript'>alert('创建房屋失败,请重新创建!');"
	            + "document.location.href='create_home';</script>");
	        }
	        out.flush();
			out.close();
			return mv;
	}
	
	/*
	 * 跳转信息页面
	 */
	@RequestMapping("/user_info")
	public String Info(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		
		System.out.println("在user_info里");
		getuser=(User) session.getAttribute("user");
	    if(getuser==null){
	    	try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您尚未登录!');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在userInfo_if里"+request.getParameter("name"));
			return "/login";
	    }else{
	    	//session.setAttribute("info", PwdtoMD5.toMD5(getuser.getPassword()));
			//System.out.println("检测加密密码:"+getuser.getPassword());
			//System.out.println("检测加密密码--解码:"+PwdtoMD5.toMD5(getuser.getPassword()));
	    	return "/user_info";
	    }
	}
	
	/*
	 * 跳转我的房屋页面
	 */
	@RequestMapping("/myroom")
	public String MyRoom(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response){
		
		/*
		 * 绑定数据
		 */
	    getuser=(User) session.getAttribute("user");
	    if(getuser==null){
	    	try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您尚未登录!');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在myroom_if里"+request.getParameter("name"));
			return "/login";
	    }else{
	    	Map<String,String> getRoomMap=new HashMap<String,String>();
			getRoomMap.put("landlord", getuser.getUsername());
			System.out.println("myroom_landlord:"+getRoomMap.get("landlord"));
			List<House> houseList=userService.getHoueByLandlord(getRoomMap);
			if(houseList.size()!=0){
				System.out.println("myroom_if里:"+userService.getHoueByLandlord(getRoomMap));
				session.setAttribute("landlord_house", houseList);
				return "/myroom";
			}else{
				System.out.println("myroom_else里:"+userService.getHoueByLandlord(getRoomMap));
				try {
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out =response.getWriter();
					out.print("<script type='text/javascript'> alert('系统提示：您尚未有房屋出租!');"
							+"document.location.href='index';</script>");
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "/index";
			}
	    }
	}
	
	/*
	 * 跳转我的订单页面
	 */
	@RequestMapping("/single_test")
	public String Single(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		
		/*
		 * 订单页面数据传送
		 * 获取session值
		 */
		getuser=(User) session.getAttribute("user");
		//System.out.println("getuser.getName："+getuser.getUsername());
		if(getuser==null){
			try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您尚未登录!');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在single_if里"+request.getParameter("name"));
			return "/login";
		}else{
			Map<String,String> orderMap=new HashMap<String,String>();
			orderMap.put("renter", getuser.getUsername());
			System.out.println("查询order表："+orderMap.get("renter"));
			List<OrderHouse> OrderhouseList=userService.getHouseByRenter(orderMap);
			/*if(OrderhouseList.size()==0){
				System.out.println("查询联立表为空："+OrderhouseList);
				try {
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out =response.getWriter();
					out.print("<script type='text/javascript'> alert('系统提示：您尚未有过订房记录!');"
							+"document.location.href='index';</script>");
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "/index";
			}else{*/
				session.setAttribute("single_house", OrderhouseList);
				System.out.println("查询联立表："+session.getAttribute("single_house"));
				return "/single_test";
			//}
			//return "/single_test";
		}
	}
	
	/*
	 * 跳转反馈页面
	 */
	@RequestMapping("/suggestion")
	public String Suggestion(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		
		getuser=(User) session.getAttribute("user");
	    if(getuser==null){
	    	try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您尚未登录!');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在suggestion_if里"+request.getParameter("name"));
			return "/login";
	    }else{
	    	return "/suggestion";
	    }
	}
	
	/*
	 * 跳转联系页面
	 */
	@RequestMapping("/contact")
	public String Contact(HttpServletRequest request,Model model){
		
		return "/contact";
	}
	/*
	 * 订单页面房东受理跳转
	 */
	@RequestMapping("/accept")
	public String GoAccept(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		
		getuser=(User) session.getAttribute("user");
		Map<String,String> getRoomMap=new HashMap<String,String>();
		getRoomMap.put("landlord", getuser.getUsername());
		System.out.println("myroom_landlord:"+getRoomMap.get("landlord"));
		//List<House> houseList=userService.getHoueByLandlord(getRoomMap);
		List<OrderHouse> houseList=userService.getHouse_Land(getRoomMap);
		
		if(houseList.size()==0){
			try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您目前尚未出租过任何房屋!');"
						+"document.location.href='single_test';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "/single_test";
		}else{
			Map<String,String> landlordMap=new HashMap<String,String>();
			landlordMap.put("status", "未受理");
			List<OrderHouse> landList=userService.getHouse_Land(landlordMap);
			System.out.println("test1:"+landList);
			session.setAttribute("land_house", landList);
			return "/accept";
		}
	}
	
	/*
	 * 管理员主界面跳转其他管理员管理界面
	 */
	@RequestMapping("/user_management")
	public String UserManage(HttpServletRequest request,Model model){
		
		
		return "/user_management";
	}
	@RequestMapping("/information")
	public ModelAndView gotoInformation(HttpSession session) {
		List<Suggestion> suggestionList = userService.querySuggestion();
		System.out.println(suggestionList.get(0).getUsername());
		session.setAttribute("suggestionList", suggestionList);
		mv.setViewName("information");
		return mv;
	}
	/*
	 * 管理员管理用户
	 */
	@RequestMapping("/upUserInfo")
	public String UpTnfo(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response){
		Map<String,String> infoMap=new HashMap<String,String>();
		try {
			infoMap.put("username", new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getuser=userService.getUser(infoMap);
		if(getuser!=null){
			request.setAttribute("userInfo", getuser);
			System.out.println("测试："+request.getAttribute("userInfo"));
			//return "redirect:/user_management";//重定向
			return "/user_management";
		}
		//session.setAttribute("userInfo", getuser);
		return "/user_management";
	}
	/*
	 * 管理员删除用户
	 */
	@RequestMapping("/deleteuser")
	public String DeletUser(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response){
		//getuser=(User) request.getAttribute("userInfo");
		Map<String,String> namemap=new HashMap<String,String> ();
		try {
			namemap.put("username", new String(request.getParameter("username").getBytes("iso-8859-1"), "utf-8"));
			//name=new String(request.getParameter("username").getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("测试管理员删除："+namemap);
		if(namemap.equals(null)){
			try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：用户为空!');"
						+"document.location.href='user_management';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在deleteuser_if里"+namemap);
			return "redirect:/user_management";
		}else{
			try {
				userService.SystemDelet(namemap);
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：删除成功!');"
						+"document.location.href='user_management';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在deleteuser_if里"+request.getParameter("name"));
			return "redirect:/user_management";
		}
		//return null;
	}
	
	/*
	 * 实现登录
	 */
	@RequestMapping("/Is_login")
	public String DoLogin(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response){
		
		
		Map<String,String> map=new HashMap<String,String> ();
		//map.put("username",request.getParameter("name"));
		/*
		 * 中文URL字符处理
		 */
		try {
			map.put("username",new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		map.put("password",PwdtoMD5.toMD5(request.getParameter("password")));
		System.out.println("在Dologin里"+request.getParameter("name"));
		if(userService.login(map)==null){
			
			try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：用户登录账号(名称)或密码有误!请检查。');"
						+"document.location.href='login';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在Dologin_if里"+request.getParameter("name"));
			return "/login";
		}else{
			/*
			 * 管理员
			 */
			if(userService.login(map).getUsername().equals("admin")){
				System.out.println("在login_esle if_admin_if里"+request.getParameter("name"));
				session.setAttribute("user",userService.login(map));
				List<House> toauditHouseList = userService.HouseByrent_status();
				session.setAttribute("toauditHouseList", toauditHouseList);
				return "/system_management";
			}else{
				System.out.println("在admin_else里"+request.getParameter("name"));
				session.setAttribute("user",userService.login(map));
				System.out.println("在login_else_session里"+session.getAttribute("user"));
				return "/index";
			}
		}
	}
	
	/*
	 * 跳转管理员
	 */
	@RequestMapping("/system_management")
	public ModelAndView gotoSystem_Management(HttpSession session) {
		List<House> toauditHouseList = userService.HouseByrent_status();
		session.setAttribute("toauditHouseList", toauditHouseList);
		mv.setViewName("/system_management");
		return mv;
	}
	/*
	 * 管理员管理房屋发布
	 */
	@RequestMapping("/agreeHouse")
	public ModelAndView agreeHouse(HttpServletRequest request,HttpSession session,
			HttpServletResponse response) throws IOException {
		
		String roomname = new String(request.getParameter("roomname").getBytes("iso-8859-1"),"utf-8");
		int i = userService.updateHouseRent_Status(roomname);
		if(i>0) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>alert('发布成功!');"
			 	+ "document.location.href='system_management';</script>");
			out.flush();
			out.close();
		}
		return mv;
	}
	/*
	 * 房东受理订单
	 */
	@RequestMapping("agreeOrder")
	public ModelAndView agreeOrder(HttpServletRequest request,HttpSession session,
			HttpServletResponse response) throws IOException {
		
		String roomname = new String(request.getParameter("roomname").getBytes("iso-8859-1"),"utf-8");
		String username = new String(request.getParameter("renter").getBytes("iso-8859-1"),"utf-8");
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("username", username);
		map.put("roomname", roomname);
		System.out.println("test_agreeOrder:"+map);
		int i = userService.updateUser_OrderStatus(map);
		int j = userService.updateHouseCanNotRent(roomname);
		int h = userService.updateHouseRent_Num(roomname);
		if(i>0&&j>0&&h>0) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>alert('受理订单成功!');"
			 	+ "document.location.href='accept';</script>");
			out.flush();
			out.close();
		}
		return mv;
	}
	
	/*
	 * 注册
	 */
	@RequestMapping("/doregis")
	public String DoRegister(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response){
		
		System.out.println("在doregis里:tel="+request.getParameter("tel"));
		System.out.println("在doregis里:password="+request.getParameter("password"));
		System.out.println("在doregis里:password_accep="+request.getParameter("password_accep"));
		System.out.println("在doregis里:name="+request.getParameter("name"));
		System.out.println("在doregis里:age="+request.getParameter("age"));
		System.out.println("在doregis里:sex="+request.getParameter("sex"));
		Map<String,String> regisMap=new HashMap<String,String>();
		//Map getMap=new HashMap();
		
		/*
		 * 将数据放进map
		 */
		//String passWord=
		regisMap.put("tel", request.getParameter("tel"));
		regisMap.put("password", PwdtoMD5.toMD5(request.getParameter("password")));
		final String pwd=request.getParameter("password");
		final String pwd2=request.getParameter("password_accep");
		try {
			regisMap.put("username",new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8"));
			regisMap.put("sex", new String(request.getParameter("sex").getBytes("iso-8859-1"), "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		regisMap.put("age", request.getParameter("age"));
		
		/*
		 * 检测同号处理
		 */
		System.out.println("检测是否同号注册"+userService.getByTel(regisMap));
		if(userService.getByTel(regisMap)!=null){
			System.out.println("在getByTel里");
			try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：账号已注册!');"
						+"document.location.href='register';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "/register";
		}else{
			System.out.println("在getByTel_else里");
			if(!(pwd.equals(pwd2))){//检测是否确认密码
				System.out.println("在doregis_getByTel_esle_if里");
				try {
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out =response.getWriter();
					out.print("<script type='text/javascript'> alert('系统提示：两次密码不匹配!');"
							+"document.location.href='register';</script>");
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "/register";
			}else{
				System.out.println("在doregis_getByTel_esle_else里");
				userService.RegisterUser(regisMap);
				return "/login";
			}
		}
	}
	
	/*
	 * 用户修改信息
	 */
	@RequestMapping("update")
	public ModelAndView updateUser(@RequestParam(value="password",required=false)String password,
			@RequestParam(value="tel",required=false)String tel,
			@RequestParam(value="age",required=false)int age,
			HttpServletResponse response,HttpSession session,HttpServletRequest request) throws IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String username=new String(request.getParameter("username").getBytes("iso-8859-1"), "utf-8");
		String sex=new String(request.getParameter("sex").getBytes("iso-8859-1"), "utf-8");
		//int age1 = Integer.valueOf(age);
		User user = new User(username,PwdtoMD5.toMD5(password),tel,age,sex);//初始化User
		System.out.println("test_Info："+user);
		int i = userService.updateUser(user);
		if(i>0) {
			session.setAttribute("user", user);
			out.print("<script type='text/javascript'>alert('修改成功!');"
			+ "document.location.href='user_info';</script>");
		}
		else {
			out.print("<script type='text/javascript'>alert('修改失败,请重新修改!');"
			+ "document.location.href='user_info';</script>");
		}
		out.flush();
		out.close();
		return mv;
	}
	
	/*
	 * 用户建议操作
	 */
	@RequestMapping("/user_sugges")
	public String Suggestion(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response){
		
		getuser=(User) session.getAttribute("user");
		Map<String,String> suggeMap=new HashMap<String,String>();
		suggeMap.put("username", getuser.getUsername());
		suggeMap.put("tel", getuser.getTel());
		try {
			suggeMap.put("subject", new String(request.getParameter("title").getBytes("iso-8859-1"), "utf-8"));
			suggeMap.put("sub_content", new String(request.getParameter("suggestion").getBytes("iso-8859-1"), "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		userService.userSuggestion(suggeMap);
		try {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out =response.getWriter();
			out.print("<script type='text/javascript'> alert('系统提示：反馈成功!');"
					+"document.location.href='suggestion';</script>");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/suggestion";
	}
	
	/*
	 * 用户订单界面进行取消订单处理
	 */
	@RequestMapping("/contro_cancel")
	public String SingleCancel(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		//orderhouse=(List<OrderHouse>) session.getAttribute("single_house");
			Map<String,String> single=new HashMap<String,String>();
			try {
				single.put("housename", new String(request.getParameter("roomname").getBytes("iso-8859-1"), "utf-8"));
				single.put("renter", new String(request.getParameter("renter").getBytes("iso-8859-1"), "utf-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("在contro_cancel里测试点击获得房屋名："+single);
			singleHouse=userService.getHouse_Order(single);
			System.out.println("在contro_cancel里测试通过点击房屋名获得房屋受理信息："+singleHouse.getStatus());
			final String Is_cancel="已受理";
			if(singleHouse.getStatus().equals(Is_cancel)){
				System.out.println("在检测取消订单受理状态_if里：");
				try {
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out =response.getWriter();
					out.print("<script type='text/javascript'> alert('系统提示：您的订单已受理，不可取消!');"
							+"document.location.href='single_test';</script>");
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "/single_test";
			}else{
				try {
					userService.cancel_Single(single);
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out =response.getWriter();
					out.print("<script type='text/javascript'> alert('系统提示：您已取消订单!');"
							+"document.location.href='single_test';</script>");
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "/single_test";
			}
	}
	/*
	 * 退订
	 */
	@RequestMapping("/contro_unsubscribe")
	public String SingleUnsubscribe(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		Map<String,String> single=new HashMap<String,String>();
		try {
			single.put("housename", new String(request.getParameter("roomname").getBytes("iso-8859-1"), "utf-8"));
			single.put("renter", new String(request.getParameter("renter").getBytes("iso-8859-1"), "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("在contro_unsubscribe里测试点击获得房屋名："+single);
		singleHouse=userService.getHouse_Order(single);
		final String subscribe="待受理";
		if(singleHouse.getStatus().equals(subscribe)){
			System.out.println("在检测退订受理状态_if里：");
			try {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：您的订单尚未受理，不可退订!');"
						+"document.location.href='single_test';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "/single_test";
		}else{
			try {
				userService.cancel_Single(single);
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =response.getWriter();
				out.print("<script type='text/javascript'> alert('系统提示：退订成功!');"
						+"document.location.href='single_test';</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "/single_test";
		}
	}
	
	/*
	 * 跳转到房屋详情
	 */
	@RequestMapping("description")
	public ModelAndView gotoDescription(HttpServletResponse response,HttpServletRequest request,
			HttpSession session) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		User user = (User)session.getAttribute("user");
		if(user==null) {
			out.print("<script type='text/javascript'>alert('请先登录!');"
		        	+ "document.location.href='login';</script>");
			out.flush();
			out.close();
		}else {
			String roomname = new String(request.getParameter("room").getBytes("iso-8859-1"), "utf-8");
			System.out.println("测试房屋详情:"+roomname);
			String city = new String(request.getParameter("city").getBytes("iso-8859-1"), "utf-8");
			House house = userService.queryHouseByRoomname(roomname);
			session.setAttribute("house", house);
			
			//相关房子代码编写
			List<House> cityHouseList = userService.queryHouseByCity(city);
			session.setAttribute("cityHouse", cityHouseList);
		}
		mv.setViewName("description");
		return mv;
	}
	
	/*
	 * 用户租房
	 */
	@RequestMapping("rentroom")
	public ModelAndView rentRoom(@RequestParam(value="downprice",required=false)String downprice,
			@RequestParam(value="topprice",required=false)String topprice,HttpSession session,
			HttpServletResponse response,HttpServletRequest request) throws IOException {
		String city=new String(request.getParameter("city").getBytes("iso-8859-1"), "utf-8");
		String room_type=new String(request.getParameter("room_type").getBytes("iso-8859-1"), "utf-8");
		Double price1 = Double.parseDouble(downprice);
		Double price2 = Double.parseDouble(topprice);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("city", city);
		map.put("room_type", room_type);
		map.put("downprice", price1);
		map.put("topprice", price2);
		System.out.println("测试租房搜索:"+map);
		List<House> rentHouseList = userService.queryHouseByCityTypePrice(map);
		System.out.println("测试租房搜索:"+rentHouseList);
		if(rentHouseList.size()>0) {
			request.setAttribute("rentHouseList", rentHouseList);
		}
		else {
			 response.setContentType("text/html;charset=UTF-8");
			 PrintWriter out = response.getWriter();
			 out.print("<script type='text/javascript'>alert('没有符合条件的房子,请重新搜索!');"
			 		+ "document.location.href='buy';</script>");
			 out.flush();
			 out.close();
		}
		mv.setViewName("buy");
		return mv;
	}
	
	/*
	 *预定房屋
	 */
	@RequestMapping("reserve")
	public ModelAndView reserve(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		House house = (House)session.getAttribute("house");
		User user = (User)session.getAttribute("user");
		if(house.getLandlord().equals(user.getUsername())) {
			out.print("<script type='text/javascript'>alert('您不能预定自己的房子!');"
			 		+ "document.location.href='index.do';</script>");
		}
		else {
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String starttime = df.format(date);
			
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("username", user.getUsername());
			map.put("landlord", house.getLandlord());
			map.put("roomname", house.getRoomname());
			map.put("starttime", starttime);
			int i = userService.addOrder(map);
			if(i>0) {
				out.print("<script type='text/javascript'>alert('预定申请已提交,等待房主受理!');"
				 		+ "document.location.href='index.do';</script>");
			}
			else {
				out.print("<script type='text/javascript'>alert('预定失败,请重新预定!');"
				 		+ "document.location.href='index.do';</script>");
			}
		}
		out.flush();
		out.close();
		return mv;
	}
}
