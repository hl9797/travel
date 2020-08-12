<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<meta name="keywords" content="网红景点，旅游，景点信息,旅游资讯" />
		<meta name="description" content="网红景点，旅游，景点信息,旅游资讯" />
		<title></title>
		<link rel="Bookmark" href="favicon.ico">
		<link rel="Shortcut Icon" href="favicon.ico" />
		<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
</head>

<body>
<div class="page"> 
	 <!-- 头部导航 NAV-->
	<header class="">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--LOGO-->
					<a class="navbar-brand" href="index.jsp"> 
						<img src="public/img/header_logo.png" width="80px" height="35px" />
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp">首页 <span
								class="sr-only">(current)</span></a></li>
						<li><a href="luoyang.jsp">魅力中国</a></li>
						<li class="active"><a href="travel.jsp">畅玩</a></li>
						<li><a href="info.jsp">网红景点资讯</a></li>
					</ul>
					<!-- 全站搜索 -->

					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="search" class="form-control"
								placeholder="快速查询景区、资讯以及更多">
						</div>
						<button type="submit" class="btn btn-success">搜索</button>
					</form>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="server.jsp">服务</a></li>
						<li><a href="admin/index.jsp">后台登录 </a></li>

					</ul>
					&nbsp;
					<!-- 天气预报插件-->
					<iframe class="nav navbar-nav navbar-right" width="190"
						scrolling="no" height="49" frameborder="0"
						allowtransparency="true"
						src="http://i.tianqi.com/index.php?c=code&id=12&bdc=%23&icon=1&py=wuhan&num=5"></iframe>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</header>
	<!-- 导航结束 -->
	
		
	<div class="container-fluid scen-info">
		<div class="row">
			<h5 class="container scen-name"><a href="index.jsp">返回首页</a> <em>&nbsp;>&nbsp;</em><font id="scen-name"></font><em>&nbsp;&nbsp;</em><font color="#F7B73" id="scen-name-en">欢乐谷</font></h5>
				<img src="public/img/huanlegu.jpg" class="center-block"/>
			<div class="col-md-12">

				<div class="container scen-intro">

					<blockquote>景点介绍<em>&nbsp;&nbsp;</em>
						<font color="#F7B73" id="scen-level"></font>
						
							</blockquote>
						<hr />
						<p>
							武汉欢乐谷（武汉华侨城项目）位于东湖北岸，占地约3167亩，是深圳华侨城集团继深圳、北京、成都、上海之后，在我国中部地区倾力打造的又一大型综合区域开发项目。项目原规划建设“欢乐谷”主题公园、独立水公园、欢乐童年儿童公园、国际化文化湾区、开放式的都市娱乐休闲区、主题酒店和主题社区等。
						</p>
					</div>
					<div class="container scen-feature">
						<blockquote>景点特色</blockquote>
						<hr />
						<p>
							卡通工厂：魔幻剧场，凯撒宫，星球大战，魔力特快 ，炫舞转杯，桑巴气球，弹跳青蛙，尖峰时刻，魔术自行车 ，乐乐跳。
						</p>
						<p>
						    欢乐时光:天地双雄，飓风飞椅，Disco，皇家旋马，能量风暴，异度空间，魔幻风车，摊位游戏欢唱舞台
						    极速世界--雨落天堂等等......
						</p>
					</div>
					
					<div class="container scen-feature">
						<blockquote>景区地址</blockquote>
						<hr />
						<p>
							武汉欢乐大道欢乐谷 
						</p>
					</div>
					
					<div class="container scen-feature">
						<blockquote>交通方式</blockquote>
						<hr />
						<p>
							公交/地铁/计程车
						</p>
					</div>
				</div>
			</div>
	</div>
	<div class="container-fluid video ">
				<div class="row ">
						<div class="col-md-12">
							<img src="public/img/video.png" class="center-block" width="200px" height="110px"/>
						</div>
					<div class="col-md-12">
						 
							<video width="1000 " height="" class="col-sm-8 col-xs-8" controls preload="auto">
								<source src="public/video/huanlegu.mp4 " type="video/mp4"/>
								 <p>Your browser does not support the video tag.</p>
							</video>
					 
					</div>
				</div>
			</div>	
		
		
	<!-- 底部版权声明 -->
	<%@ include file="include/footer.jsp" %>

	<div class="back-top">
		<a href="javascript:;" class="top-button"> <img
			src="public/img/top-arrow.png" class="top-img" title="返回顶部" />
		</a>
	</div>
	
</div>


<!-- Page页结束 -->				
</body>

<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script> 
<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/back-top.js" type="text/javascript"></script>
	
		 
<script type="text/javascript">

	
</script>
</html>