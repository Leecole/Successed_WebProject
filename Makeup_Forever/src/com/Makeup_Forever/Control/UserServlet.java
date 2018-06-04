package com.Makeup_Forever.Control;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.ParseConversionEvent;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import com.Makeup_Forever.DAO.UserDaoImp;
import com.Makeup_Forever.Model.User;
import com.jspsmart.upload.File;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDaoImp daoImp;
	private ServletConfig config;
	
	/**
	 * 初始化
	 */
	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config=config;
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        daoImp=new UserDaoImp();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*request.setCharacterEncoding("UTF-8");here 我们改为设置字符过滤器*/
		String methodName=request.getParameter("method");
		System.out.println(methodName);
		
		if(methodName==null) {
			uploadUserInfo(request,response);
		}
		else {
			switch(methodName) {
				case "login": login(request,response);break;
				case "rigister": rigister(request,response);break;
				case "search": search(request,response);break;
				case "loginOff": loginOff(request,response);break;
				
			}
		}
	}
	
	/**
	 * 这是登录的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println("实现了登录方法");
		System.out.println(username+","+password);
		
		User searchedUser=new User();
		searchedUser.setUsername(username);
		searchedUser.setPassword(password);
		
		searchedUser= daoImp.searchByUser(username);//获取到的参数值，开始访问数据库
		System.out.println(searchedUser);
		if(searchedUser==null)//登录失败
		{
			System.out.println("登录失败");
			request.setAttribute("loginMessage", "Failed");
			
			request.getSession().setAttribute("userInfo",searchedUser );
			response.sendRedirect("login.jsp");
			return ;
		}else if(searchedUser!=null)//如果登陆成功，进入到这个else分支
		{
			System.out.println("登录成功");
			Cookie   usernameCookie=new Cookie("username", username);
			Cookie   passwordCookie=new Cookie("password", password);
			System.out.println("存储cookie");
			usernameCookie.setMaxAge(1000*60*60*24*3);//存3天
			passwordCookie.setMaxAge(1000*60*60*24*3);//存3天
			
			request.setAttribute("loginMessage", "Successed");
			request.getSession().setAttribute("userInfo", searchedUser);// 回话范围内存储用户资料，这样能保证用户在一次绘画中可以保留用户登录的信息
			response.sendRedirect("login.jsp");
		} 
	}
	/**
	 * 这是注册方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void rigister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String nickname=request.getParameter("nickname");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String headImage=request.getParameter("image");
		System.out.println("这里进入了注册方法");
		
		User user=new User();//实例化一个User对象
		
		//将这些数据封装到User对象中
		user.setUsername(username);
		user.setNickName(nickname);
		user.setPassword(password);
		user.setSex(sex);
		user.setEmail(email);
		user.setHeadImage(headImage);
		
		System.out.println(user);
		boolean flag=daoImp.add(user) ;//讲对象的数据添加到数据库中
		
		System.out.println("注册："+flag);
		if(flag==true) {
			request.setAttribute("rigesterResult", user);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else{
			response.sendRedirect("contact-us.jsp");
		}
	}
	/**
	 * 这是查询登录成功的那个用户的方法，用于将查询的结果转发到 用户的个人主页；
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String userid=request.getParameter("userid");
		User user=daoImp.searchByUserId(Integer.parseInt(userid));
		System.out.println("查询到的结果："+user);
		
		if(user!=null) {
			session.setAttribute("user", user);
			response.sendRedirect("userHome.jsp");
		}
		else {
			response.sendRedirect("userHome.jsp");
		}
	}
	
	/**
	 * 这是上传文件的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void uploadUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("开始执行用户信息修改方法");
		//1.用smartUpload来读取上传的文件和表单中的数据
		//首先 创建一个smartUpload上传插件的对象
		SmartUpload su=new SmartUpload();
		//2、上传初始化
		//读取request,response中的数据到smartUpload插件中
		su.initialize(config, request, response);
		try {
			//把这个表单数据读取到upload插件里
			su.upload();
			su.save("/img");
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		//3.//如果要读取表单中的数据，必须使用smartUpload 插件里面的request的request
		//该reques的对象是来自于smartupload插件包
		Request re=su.getRequest();
		String userid=re.getParameter("userid");
		int id=Integer.parseInt(userid);
		String username=re.getParameter("username");
		String password=re.getParameter("password");
		String sex=re.getParameter("sex");
		String nickname=re.getParameter("nickname");
		String email=re.getParameter("email");
		
		//将以上获取到的表单数据封装成一个User对象
		User user=new User();
		user.setUserId(id);
		user.setUsername(username);
		user.setPassword(password);
		user.setNickName(nickname);
		user.setSex(sex);
		user.setEmail(email);
		
		System.out.println("aaaaa"+user);
		//从smartUpload插件中读取页面上传的多个文件对象
		//file为smartUpload插件中的file包
		File uploadFile=su.getFiles().getFile(0);
		System.out.println("文件名为:"+uploadFile.getFileName());
		System.out.println("文件大小为:"+uploadFile.getSize());
		
		System.out.println(request.getRealPath("/img/uploadFiles/"));
		
		//使用UUID javaUUID算法，生成同一空间同一时间下绝不重复的字符串
		String uuidname=UUID.randomUUID().toString();
		java.io.File destFile=new java.io.File(request.getRealPath("/img/uploadFiles/"));
		
		String childPath="";
		for(int i=0;i<uuidname.length();i++) {
			childPath+=uuidname.charAt(i)+"/";//根据图片的uuid生成子路径
		}
		
		java.io.File f=new java.io.File(destFile,childPath);
		f.mkdirs();//// 文件夹不存在，创建文件夹
		java.io.File file=new java.io.File(f,uuidname+"."+uploadFile.getFileExt());//getFileExt()文件上传的后缀
		
		try {
			uploadFile.saveAs(file.getAbsolutePath());
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		String urlPath=file.getAbsolutePath().substring(file.getAbsolutePath().indexOf("img"),file.getAbsolutePath().length());
		System.out.println("文件路径为:"+urlPath);
		user.setHeadImage(urlPath);
		
		System.out.println("修改后的对象"+user);
		boolean result=daoImp.update(user);
		System.out.println("修改结果:"+result);//测试是否修改成功？true:false
		 if(result==true&&user!=null) {
			 request.setAttribute("uploadUser", user);
			 request.getRequestDispatcher("login.jsp").forward(request, response);
		 }
	}
	
	/**
	 * 用户退出登录的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void loginOff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("userInfo");//注销登录
		response.sendRedirect("login.jsp");
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
