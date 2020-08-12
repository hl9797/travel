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
			<h5 class="container scen-name"><a href="index.jsp">返回首页</a> <em>&nbsp;>&nbsp;</em><font id="scen-name"></font><em>&nbsp;&nbsp;</em><font color="#F7B73" id="scen-name-en">上海迪士尼</font></h5>
				<img src="public/img/dishini.jpg" class="center-block"/>
			<div class="col-md-12">

				<div class="container scen-intro">

					<blockquote>景点介绍<em>&nbsp;&nbsp;</em>
						<font color="#F7B73" id="scen-level"></font>
						
							</blockquote>
						<hr />
						<p>
							上海迪士尼乐园，是中国内地首座迪士尼主题乐园，位于上海市浦东新区川沙新镇，于2016年6月16日正式开园。它是中国大陆第一个、亚洲第三个，世界第六个迪士尼主题公园。

乐园拥有七大主题园区：米奇大街、奇想花园、探险岛、宝藏湾、明日世界、梦幻世界、玩具总动园；两座主题酒店：上海迪士尼乐园酒店、玩具总动员酒店；一座地铁站：迪士尼站；并有许多全球首发游乐项目。

2016年3月8日，上海迪士尼度假区在其官方网站公布首批园内实景图。园内的创极速光轮将成为全球迪士尼主题乐园中首创的景点。

2019年3月5日，上海迪士尼乐园因园方工作人员阻拦上海华东政法大学大三学生小王携带零食进园游玩而被告上法庭。8月11日下午，上海迪士尼度假区答复称关于外带食品与饮料的规定与亚洲的其他主题乐园一致。

2019年9月10日，上海迪士尼度假区开始正式实施其主题乐园的食品携带新规。游客不允许携带需加热、再加热、加工、冷藏或保温的食品及带有刺激性气味的食品。
						</p>
					</div>
					<div class="container scen-feature">
						<blockquote>景点特色</blockquote>
						<hr />
						<p>
							最美人工湖--最高的城堡--中国式园林--数字化乐园--主题酒店
						</p>
						<p>
						   米奇大街--大钟塔；M大街购物廊；米奇好伙伴美味集市；小米大厨烘焙坊；甜心糖果；迪士尼度假区全球首发亮点
独一无二的入口迎宾大道：在全球迪士尼乐园中将首次以米奇与伙伴们的家园——“米奇大街”做为迎宾大道。
奇想花园--梦想世界等等
						</p>
					</div>
					
					<div class="container scen-feature">
						<blockquote>景区地址</blockquote>
						<hr />
						<p>
							上海市浦东新区川沙镇
						</p>
					</div>
					
					<div class="container scen-feature">
						<blockquote>交通方式</blockquote>
						<hr />
						<p>
							11号线迪士尼段2015年12月开通。不过，迪士尼段先开通秀沿路站、康新公路站，迪士尼站（Disney Resort Station）为2016年4月26日开通。

机场一线B线(商旅快线)

上海将新辟机场一线B线(商旅快线)，可从浦东机场和虹桥机场直达迪士尼乐园。起讫站为浦东机场—虹桥枢纽东中心，线路走向为：

上行：浦东机场、迎宾大道、南六公路、航城路、唐黄路、迪士尼乐园公交枢纽、迎宾大道、外环线、沪青平高架、沪青平高架、虹渝高架、虹桥枢纽东交通中心。

下行：虹桥枢纽东交通中心、虹渝高架、沪青平高架、外环线、迎宾大道、唐黄路、迪士尼乐园公交枢纽、唐黄路、航城路、南六公路、迎宾大道至浦东机场。

8条度假区快线

2015年10月底，上海国际旅游度假区开始对8条“度假区快线”巴士线路进行招标。它们分别由上海火车站、上海南站、虹桥枢纽、浦东机场、白莲泾、上体馆、虹口足球场和南浦大桥这8个市内点始发，直达迪士尼乐园。

自驾

2015年9月，上海申江路高架全面更名成“度假区高架路”，迪士尼乐园开园后，其将能够直通园内。
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
								<source src="public/video/dishini.mp4 " type="video/mp4"/>
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