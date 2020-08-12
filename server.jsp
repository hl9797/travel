<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="keywords" content="网红景点，旅游，景点信息,旅游资讯" />
<meta name="description" content="网红景点，旅游，景点信息,旅游资讯" />
<title>服务 - 网红景点</title>
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="public/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />

<style type="text/css">
	.server-page {
		margin-top: 30px;
		margin-bottom: 50px;
	}
</style>
</head>

	<body>
		<div class="page">

			<header class="">
				<nav class="navbar navbar-default navbar-fixed-top">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
			     	</button>
							<!--LOGO-->
							<a class="navbar-brand" href="index.jsp">
								<img src="public/img/header_logo.png" width="80px" height="35px" />
							</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="index.jsp">首页 <span class="sr-only">(current)</span></a>
								</li>
								<li>
									<a href="china.jsp">魅力中国</a>
								</li>
								<li>
									<a href="travel.jsp">畅玩</a>
								</li>
								<li>
									<a href="info.jsp">网红景点资讯</a>
								</li>
							</ul>
							<!-- 全站搜索 -->

							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="search" class="form-control" placeholder="快速查询景区、资讯以及更多">
								</div>
								<button type="submit" class="btn btn-success">搜索</button>
							</form>

							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="server.jsp">服务</a>
									<li><a href="admin/index.jsp">后台登录 </a></li>
								</li>
							</ul>
							&nbsp;
							<!-- 天气预报插件-->
							<iframe class="nav navbar-nav navbar-right" width="190" scrolling="no" height="49" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&bdc=%23&icon=1&py=wuhan&num=5"></iframe>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</header>
			<!-- 导航结束 -->
			<div class="container-fluid">
				<div class="row">

					<img src="public/img/ban1.jpg" class="img-responsive" style="margin-top: 45px; " />
				</div>
			</div>

			<!-- 服务主题页-->
			<div class="container server-page">

				<div class="row">
					<div class="col-md-8 msg">
						<h4 class="text-center">留言给我们</h4>

						<form id="msg-form" method="post" action="MsgAdd">
							<div class="col-md-12">

								<div class="form-group col-md-9 col-md-offset-1">
									<label for="name">Enter your name:</label>
									<input type="text" class="form-control" id="author" name="author" placeholder="Enter your name:" required="required">
								</div>

								<div class="form-group col-md-9 col-md-offset-1">
									<label for="email">Email your email:</label>
									<input type="email" class="form-control" id="email" name="email" placeholder="Enter your email:" required>
								</div>

								<div class="form-group col-md-9 col-md-offset-1">
									<label for="msg">Your message here:</label>
									<textarea id="msg_text" class="form-control" rows="3" name="msg_text"  placeholder="Enter Your message:"  required></textarea>
								</div>
								<div class="form-group col-md-9 col-md-offset-1 text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
						</form>
					</div>

					<div class="col-sm-4">
						<div class="about">							 
							<blockquote>About</blockquote>
							<p>
														
       						随着中国科学技术的迅速发展，人们的生活水平都在稳步提高，都注重生活的享受和放松。去一些令人赏心悦目和风景宜人的地方已经是大部分人的追求了。
							网红景点推荐网是集网红景点展示、资讯展示以及用户留言反馈于一体的展示平台，基于HTML5的响应式设计。
							</p>
						</div>
						
						<div class="about">							 
							<blockquote>Contact</blockquote>
							<dl class="dl-horizontal">
							  <dt>电话：</dt>
							  <dd>1589751xxxx</dd>
							</dl>
							<dl class="dl-horizontal">
							  <dt>邮箱：</dt>
							  <dd>2252896366@qq.com</dd>
							</dl>
							<dl class="dl-horizontal">
							  <dt>地址：</dt>
							  <dd>湖北省武汉市江岸区谌家矶大道</dd>
							</dl>
							<dl class="dl-horizontal">
							  <dt>官网：</dt>
							  <dd>www.xxx.com</dd>
							</dl>
							
						</div>
					</div>
				</div>
			</div>
			<!-- 主题页结束-->

			<!-- 底部版权声明 -->
			<%@ include file="include/footer.jsp" %>
			<!-- 版权结束-->

		</div>
		<!-- 全页结束-->
	</body>

	<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script src="public/js/back-top.js" type="text/javascript" charset="UTF-8"></script>

</html>