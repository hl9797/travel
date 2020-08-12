<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="keywords" content="网红景点，旅游，景点信息,旅游资讯" />
<meta name="description" content="网红景点，旅游，景点信息,旅游资讯" />
<title>魅力中国  - 网红景点推荐网</title>
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
<link rel="stylesheet" type="text/css" href="public/css/style.css">
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
							<li class="active"><a href="luoyang.jsp">魅力中国</a></li>
							<li><a href="travel.jsp">畅玩</a></li>
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
		
			<div class="introduce">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<img src="public/img/describe.png" class="center-block" width="200px" height="110px" />
						</div>
						<div class="col-md-12">
							<div class="col-md-5 col-sm-5">
								<img src="public/img/zhongguo.png" class="img-responsive" />
							</div>
							<div class="col-md-7 col-sm-7">

								<div class="intro-text">
									<span class="luoyang">中国</span> 中华人民共和国，简称中国，位于亚洲东部，太平洋西岸， 是工人阶级领导的、以工农联盟为基础的人民民主专政的社会主义国家。1949年（己丑年）10月1日成立， 以五星红旗为国旗， 《义勇军进行曲》为国歌， 国徽内容包括国旗、天安门、齿轮和麦稻穗，首都北京，省级行政区划为23个省、5个自治区、4个直辖市、2个特别行政区， 是一个以汉族为主体民族，由56个民族构成的统一多民族国家。
									<p class="feature">目前中国是世界上最大、综合实力最强的发展中国家，在国际上的地位不断提高，在国际事务中的影响力不断增大，成为国际舞台上的一支重要力量。
中国的国际地位与55年前不可同日而语 。当代中国正在发生广泛而深刻的变革。客观地讲，中国现在是世界上发展速度最快，变化最活跃的一支力量。从纵向看，中国正处在过去几个世纪发展最快的时期；从横向看，中国的发展变化正对世界产生广泛而深刻的影响。党的第十七次全国代表大会上的报告指出，“当代中国同世界的关系发生了历史性变化，中国的前途命运日益紧密地同世界的前途命运联系在一起”。在中国成功举办奥运会之后，特别是国际金融危机发生以来，中国与世界紧密相连、深入互动的关系表现得更加明显。</p>
								</div>
							</div>
						</div>

						<img src="public/img/tesemeishi.png" class="center-block" width="200px" height="110px"/>
						<div class="col-md-12 foods text-center">
							<img alt="" src="public/img/dazhaxie.png" class="img-rounded col-md-5 col-md-offset-1" title="大闸蟹" style="margin-bottom: 20px;">
							<img alt="" src="public/img/niuroutang.png" class="img-rounded col-md-5" title="牛肉汤">
						</div>

						<img src="public/img/xisu.png" class="center-block" width="200px" height="110px" />
						<div class="col-md-12">

							<div id="slider">
								<ul class="slides clearfix">
									<li><img class="responsive" src="public/img/40239A7.png"></li>
									<li><img class="responsive" src="public/img/402F9CE.png"></li>
									<li><img class="responsive" src="public/img/smdABFD.png"></li>
									<li><img class="responsive" src="public/img/pms9C98.png"></li>
								</ul>
								<ul class="controls">
									<li><img src="public/img/prev.png" alt="previous"></li>
									<li><img src="public/img/next.png" alt="next"></li>
								</ul>
								<ul class="pagination">
									<li class="active"></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid map">
				<div class="row">
					<div class="col-md-12">
						<img src="public/img/map.png" class="center-block" />
						<iframe src="map.html" width="100%" height="500px" frameborder="no" scrolling="no"></iframe>						
						<p class="text-center">在地图上添加全景控件，点击全景控件进入全景图</p>
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
								<source src="public/video/myvideo.mp4 " type="video/mp4"/>
								 <p>Your browser does not support the video tag.</p>
							</video>
					 
					</div>
				</div>
			</div>

			<!-- /.page -->

		<!-- 底部版权声明 -->
		<%@ include file="include/footer.jsp" %>

			<!-- 返回顶部-->
			<div class="back-top">
				<a href="javascript:;" class="top-button">
					<img src="public/img/top-arrow.png" class="top-img" title="返回顶部" />
				</a>
			</div>
			<!-- 返回顶部END-->

		</div>

	</body>

	<!-- Bootstrap core JavaScript-->
	<script src="public/js/jquery-3.1.1.js " type="text/javascript " charset="utf-8 "></script>
	<script src="public/js/bootstrap.js " type="text/javascript " charset="utf-8 "></script>
	<script src="public/js/easySlider.js "></script>
	<script type="text/javascript ">
		$(function() {
			 
			$("#slider ").easySlider({
				slideSpeed: 500,
				paginationSpacing: "15px ",
				paginationDiameter: "12px ",
				paginationPositionFromBottom: "20px ",
				slidesClass: ".slides ",
				controlsClass: ".controls ",
				paginationClass: ".pagination "
			});
		});
	</script>
	<script src="public/js/back-top.js" type="text/javascript" charset="UTF-8"></script>
</html>
