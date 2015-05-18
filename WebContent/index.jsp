<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>69School</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="bootstrap.min.css" rel="stylesheet">

    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
 
<!--
<nav class="navbar navbar-fixed-top header">
    <div class="col-md-12">
        <div class="navbar-header">

            <a href="#" class="navbar-brand">Bootstrap</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse1">
                <i class="glyphicon glyphicon-search"></i>
            </button>

        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse1">
            <form class="navbar-form pull-left">
                <div class="input-group" style="max-width:470px;">
                    <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
                    <div class="input-group-btn">
                        <button class="btn btn-default btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://www.bootply.com" target="_ext">Bootply+</a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-bell"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="badge pull-right">40</span>Link</a></li>
                        <li><a href="#"><span class="badge pull-right">2</span>Link</a></li>
                        <li><a href="#"><span class="badge pull-right">0</span>Link</a></li>
                        <li><a href="#"><span class="label label-info pull-right">1</span>Link</a></li>
                        <li><a href="#"><span class="badge pull-right">13</span>Link</a></li>
                    </ul>
                </li>
                <li><a href="#" id="btnToggle"><i class="glyphicon glyphicon-th-large"></i></a></li>
                <li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
-->
<div class="navbar navbar-default" id="subnav">
    <div class="col-md-12">
        <div class="navbar-header">

            <a href="#" style="margin-left:15px;" class="navbar-btn btn btn-default btn-plus dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-home" style="color:#dd1111;"></i> 69School <small><i class="glyphicon glyphicon-chevron-down"></i></small></a>
            <ul class="nav dropdown-menu">
                <li><a href="#"><i class="glyphicon glyphicon-user" style="color:#1111dd;"></i> Profile</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-dashboard" style="color:#0000aa;"></i> Dashboard</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-inbox" style="color:#11dd11;"></i> Pages</a></li>
                <li class="nav-divider"></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog" style="color:#dd1111;"></i> Settings</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-plus"></i> More..</a></li>
            </ul>


            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
  <% String username = (String)session.getAttribute("name");
     String hello = "Hello, ";
     String log = "Logout";
     String loglink="#loginModal";
     session.setAttribute("inOrOut", "login");
     if(username==null)
     {
    	 username = "   ";
    	 hello="";
    	 log="Login";
     }
     if(log.equals("Logout"))
     {
    	 loglink = "#logoutModal";
    	 session.setAttribute("inOrOut", "logout");
    	// session.removeAttribute("name");
     }
  %>
  
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse2">
            <ul class="nav navbar-nav navbar-right">
               <li><a href="" role="button" data-toggle="modal"><%=hello+username %></a></li>
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="<%=loglink%>" role="button" data-toggle="modal"><%=log %></a></li>
                <li><a href="#aboutModal" role="button" data-toggle="modal">About</a></li>
            </ul>
        </div>
    </div>
</div>

<!--main-->
<div class="container-fluid" id="main">
<div class="row">
    <div class="col-md-4 col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>类别选择</h4></div>
            <div class="panel-body">
                <div class="list-group">
                    <a href="#" class="list-group-item">书籍资料</a>
                    <a href="#" class="list-group-item">电子产品</a>
                    <a href="#" class="list-group-item">二手电器</a>
                    <a href="#" class="list-group-item">服装/鞋帽/箱包</a>
                </div>
            </div>
        </div>
        <div class="well">
            <form class="form-horizontal" role="form">
                <h4>What's New</h4>
                <div class="form-group" style="padding:14px;">
                    <textarea class="form-control" placeholder="发布交易信息..."></textarea>
                </div>
                <button class="btn btn-success pull-right" type="button">Post</button><ul class="list-inline"><li><a href="#"><i class="glyphicon glyphicon-align-left"></i></a></li><li><a href="#"><i class="glyphicon glyphicon-align-center"></i></a></li><li><a href="#"><i class="glyphicon glyphicon-align-right"></i></a></li></ul>
            </form>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>最新发布</h4></div>
            <div class="panel-body">
                <img src="pic.PNG" class="img-circle pull-right"> <a href="#">product from @XXX</a>
                <div class="clearfix"></div>
               <--交易信息概要-->
                <hr>
                <ul class="list-unstyled">
                    <li><a href="#">交易信息一（发布于1分钟前）</a></li>
                    <li><a href="#">交易信息二（发布于3分钟前）</a></li>
                    <li><a href="#">交易信息三（发布于5分钟前）</a></li>
                <li><a href="#">交易信息四（发布于20分钟前）</a></li></ul>
            </div>
        </div>

    </div>
    <div class="col-md-4 col-sm-6">

        <div class="well">
            <form class="form">
                <h4>I want？</h4>
                <div class="input-group text-center">
                    <input type="text" class="form-control input-lg" placeholder="输入我想要的东西">
                    <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="button">Search</button></span>
                </div>
            </form>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>今日最佳</h4></div>
            <div class="panel-body">
                <p><img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">点此进入宝贝链接</a></p>
                <div class="clearfix"></div>
                <hr>
                <--product description-->
                <p>line1</p>
                <p>line2</p>
                <p>line3</p>
                <p>line4</p>
                <p>line5</p>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>瓜大毕业纪念品</h4></div>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item">明信片</li>
                    <li class="list-group-item">飞机模型</li>
                    <li class="list-group-item">钥匙/手机配件/U盘</li>
                </ul>
            </div>
        </div>

    </div>
    <div class="col-md-4 col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>热门搜索</h4></div>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item">考研高分笔记</li>
                    <li class="list-group-item">出国留学书籍</li>
                    <li class="list-group-item">手机</li>
                    <li class="list-group-item">洗衣机</li>
                    <li class="list-group-item">热水器</li>
                    <li class="list-group-item">书包</li>
                </ul>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>七嘴八舌留言板</h4></div>
            <div class="panel-body">
                <img src="//placehold.it/150x150" class="img-circle pull-right">瓜大学子们对我们同校二手交易平台的服务满意吗？欢迎来这里畅所欲言哦！
                <div class="clearfix"></div>
                <hr>

                <p>我们会真诚吸收好的评论，不断完善，为广大瓜大学子提供优质的二手交易服务哦~~</p>

                <hr>
                <form>
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>

                        </div>
                        <input type="text" class="form-control" placeholder="我要评论..">

                    </div>
                </form>

            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>热门活动</h4></div>
            <div class="panel-body">
                <div class="list-group">
                    <a href="#" class="list-group-item active">限时外卖</a>
                    <a href="#" class="list-group-item">交易物品积累经验值</a>
                    <a href="#" class="list-group-item">“认真评价奖”抵金币</a>
                </div>
            </div>
        </div>

    </div>
</div><!--/row-->

<hr>

<div class="row">
    <div class="col-md-12"><h2>1F 手机数码产品</h2></div>
    <div class="col-md-4 col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>二手手机</h4></div>
            <div class="panel-body">
                <img src="pic.PNG" class="img-circle pull-right"> <a href="#">宝贝描述</a>
                <div class="clearfix"></div>
                <hr>
                <p>description   description  description      description      description</p>
                <h5><a href="http://www.baidu.com">点击查看更多宝贝链接</a></h5>

            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>二手电脑</h4></div>
            <div class="panel-body">
                description   description  description      description      description
                <hr>
                <div class="well well-sm">
                    <!--<div class="media">
                        <a class="thumbnail pull-left" href="#">
                            <img class="media-object" src="//placehold.it/80">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">John Doe</h4>
                            <p><span class="label label-info">10 photos</span> <span class="label label-primary">89 followers</span></p>
                            <p>
                                <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-comment"></span> Message</a>
                                <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
                            </p>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading"><a href="#" class="pull-right">更多</a> <h4>二手小家电</h4></div>
            <div class="panel-body">
                <img src="pic.PNG" class="img-circle pull-right"> <a href="#">宝贝详情</a>
                <div class="clearfix"></div>
                <hr>
                <div class="clearfix"></div>
                <img src="pic.PNG" class="img-responsive img-thumbnail pull-right">
                <p>description   description  description      description      description</p>
                <div class="clearfix"></div>
                <hr>
                <div class="clearfix"></div>
                <img src="pic.PNG" class="img-responsive img-thumbnail pull-left" style="margin-right:5px;">
                <p>description   description  description      description      description</p>


            </div>
        </div>
    </div><!--/articles-->
</div>

<hr>

<div class="row">
    <div class="col-sm-4 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-thumbnail"><img src="pic.PNG" class="img-responsive"></div>
            <div class="panel-body">
                <p class="lead">衣服</p>
                <p>description</p>


            </div>
        </div>
    </div><!--/col-->

    <div class="col-sm-4 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-thumbnail"><img src="pic.PNG" class="img-responsive"></div>
            <div class="panel-body">
                <p class="lead">书籍</p>
                <p>description</p>


            </div>
        </div>
    </div><!--/col-->

    <div class="col-sm-4 col-xs-6">
        <div class="panel panel-default">
            <div class="panel-thumbnail"><img src="pic.PNG" class="img-responsive"></div>
            <div class="panel-body">
                <p class="lead">零食</p>
                <p>description</p>


            </div>
        </div>
    </div><!--/col-->

</div>

<hr>



    <br>

    <div class="clearfix"></div>

    <hr>
    <div class="col-md-12 text-center"><p><a href="#" target="_ext">69School</a><br><a href="#" target="_ext">Provided by @69Schoolers</a></p></div>
    <hr>

</div>
</div><!--/main-->

<!--login modal-->
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2 class="text-center"><img src="100151755.jpg" ><br>Login</h2>
            </div>
            <div  ><!--这里删了class=“modal-body”-->

              <s:form action="login" method="post">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control input-lg" placeholder="UserName">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control input-lg" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-lg btn-block">Sign In</button>
                        <span class="pull-right"><a href="register.jsp">Register</a></span><span><a href="#">Need help?</a></span>
                    </div>
                </s:form>
              
            </div>
           <div class="modal-footer">
                <div class="col-md-12">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                </div>
             </div>
          </div>
      </div>
  </div>

<!-- logout modal -->
<div id="logoutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2 class="text-center"><img src="100151755.jpg" ><br>Logout</h2>
            </div>
            <div><!--这里删了class=“modal-body”-->
                 <a href="success.jsp"><button type="text" class="btn btn-primary btn-lg btn-block">Logout</button></a>
               <span class="pull-right"><a href="register.jsp">  </a></span><span><a href="#">Need help?</a></span>
              </div>   
            </div>
           <div class="modal-footer">
                <div class="col-md-12">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                </div>
             </div>
          </div>
      </div>
  </div>



<!--about modal-->
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2 class="text-center">About</h2>
            </div>
            <div class="modal-body">
             <p>69同校是我们软件工程课程设计作品。</p>
              <p>小组成员：罗立勇 高卫东 韩千 白晨阳 李凡 纪静 戚漫华 李昊 张磊 韦景刚 蒋威</p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">OK</button>
            </div>
        </div>
    </div>
</div>
<!-- script references -->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!--<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script src="js/scripts.js"></script>-->
</body>
</html>