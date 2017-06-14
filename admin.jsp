<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/easyui.css">
<link rel="stylesheet" type="text/css" href="css/icon.css">
<link rel="stylesheet" type="text/css" href="css/color.css">
<link rel="stylesheet" type="text/css" href="css/demo.css">
<link rel="stylesheet" type="text/css" href="css/admin.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/admin.js"></script>

<script type="text/javascript" src="js/model.js"></script>

<style type="text/css">
 .datagrid-header-rownumber,.datagrid-cell-rownumber{
  	width:80px;
 }

</style>
</head>
<body class="easyui-layout">
	
	<%
	//验证是否登陆
		String username = (String)session.getAttribute("uname");
		if(username==null)
		{ 
			
			   response.setStatus(response.SC_MOVED_TEMPORARILY);
			   response.setHeader("Location", "login.jsp"); 
			
		}
	%>

	
	<div data-options="region:'north',title:'North Title',split:true,noheader:true"
		style="height: 60px; background-image: url(images/bg_header.jpg); ">
	<div class="logo">防窜货管理系统</div>
	<div class="logout">您好，<%= username%> | <a href="/Manage/logout"><font color="red">退出</font></a></div>	
		
	</div>

	
	<%--左侧 --%>
	<div data-options="region:'west',title:'导航菜单',split:false"
		style="width:180px;">
		<div class="easyui-accordion" data-options="border:false,fit:true">
		
			<div title="项目模块" data-options="iconCls:'icon-app'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree" >
                	<li iconCls="icon-wrench" data-options="attributes:{'url':'manager.jsp'}">管理项目</li>
           
                </ul>
            </div>
            
            <div title="模型模块" data-options="iconCls:'icon-model'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree" >
                	<li iconCls="icon-wrench" data-options="attributes:{'url':'model.jsp'}">管理模型</li>
                
                   
                </ul>
            </div>

            <div title="用户模块" data-options="iconCls:'icon-users'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree" >
                	<li iconCls="icon-wrench" data-options="attributes:{'url':'user.jsp'}">管理用户</li>
                  
                   
                </ul>
            </div>
         
            <div title="订单模块" data-options="iconCls:'icon-cart'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree" >
                	<li iconCls="icon-wrench" data-options="attributes:{'url':'order.jsp'}">管理订单</li>
                    
                    
                </ul>
            </div>
            
             <div title="日志模块" data-options="iconCls:'icon-log'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree" >
                	<li iconCls="icon-wrench" data-options="attributes:{'url':'log.jsp'}">管理日志</li>
                    
                    
                </ul>
            </div>
            
               <div title="管理员模块" data-options="iconCls:'icon-user_bb'" style="padding:5px;">  	
    			<ul class="easyui-tree wu-side-tree" >
                	<li iconCls="icon-wrench" data-options="attributes:{'url':'boss.jsp'}">管理员管理</li>
                    
                    
                </ul>
            </div>
		 
		</div>
			
		
	</div>
	
	<%--右侧--%>
	<div data-options="region:'center'"
		style="overflow:hidden; width:20px;" >
		
		
	<div id="tabs">
		<div title="起始页" style="padding:10px 10px;display:block;" 
		 data-options="closable:false,iconCls:'icon-house'">
			欢迎来到后台管理系统！
		</div>
	</div>
	</div>

		
	<%--底部 --%>
	
	<div data-options="region:'south',border:false,noheader:true"
		style="height:29px;line-height:28px;text-align:center;">
		&copy;2017 SPREAD All Rights Reserved</div>
		
<script type="text/javascript">
 
 	 

	  function showLogin()
	  {
		 
		  $.ajax({ 
			  	
				url: "/Manage/time",
				 
				success:function(data, response, status){
				 
					if(data==0){
						window.location.href= "login.jsp";
						 
					}else{
				 		console.log('session_ok');
					}
				}
				
				
			});
	  }
	  
	  $(document).mousemove(function(e){
	 
	 	showLogin();
			
	  });
	  
 
</script>

</body>
</html>
