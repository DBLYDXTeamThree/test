<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-combined.min.css">  
<link rel="stylesheet" type="text/css" media="screen" href="css/jquery.datetimepicker.css">  
<link rel="stylesheet" type="text/css" href="css/lanrenzhijia_2.css" />
<link rel="stylesheet" type="text/css" href="css/datePicker.css" >
<!--***这里是单独调用的css文件***-->
<link rel="stylesheet" type="text/css" href="css/index/demo.css">
<link rel="stylesheet" type="text/css" href="css/index/index1.css">
<link rel="stylesheet" type="text/css" href="css/index/From.css">
<link rel="stylesheet" type="text/css" href="css/index/index.css" />
	<script type="text/javascript" src="js/ajaxupload.js"></script>
<link rel="stylesheet" type="text/css" href="css/title/Examination1.css">
<!--** 下面的js不能删除袄 这5个是公用的 也不能改袄**-->
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-switch.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
<script type="text/javascript" src="js/init.js"></script>

<style type="text/css">
  .dropdown:hover .menu-top {
    display: block;
}

.dropdown-submenu{
    position:relative;
}

.dropdown-submenu > .dropdown-menu{
    top:0;
    left:100%;
    margin-top:-6px;
    margin-left:-1px;
    -webkit-border-radius:0 6px 6px 6px;
    -moz-border-radius:0 6px 6px 6px;
    border-radius:0 6px 6px 6px;
}

.dropdown-submenu:hover > .dropdown-menu{
    display:block;
}

.dropdown-submenu > a:after{
    display:block;
    content:" ";
    float:right;
    width:0;
    height:0;
    border-color:transparent;
    border-style:solid;
    border-width:5px 0 5px 5px;
    border-left-color:#cccccc;
    margin-top:5px;
    margin-right:-10px;
}

.dropdown-submenu:hover > a:after{
    border-left-color:#ffffff;
}

.dropdown-submenu .pull-left{
    float:none;
}

.dropdown-submenu.pull-left > .dropdown-menu{
    left:-100%;
    margin-left:10px;
    -webkit-border-radius:6px 0 6px 6px;
    -moz-border-radius:6px 0 6px 6px;
    border-radius:6px 0 6px 6px;
}
</style>

<!--导航结束-->
<!--内容开始-->
<div class="main-right">
  <div class="col-md-7">
<!--快速通道-->
     <h3 style="border:1px solid #d4d1d1;"><a href="#" class="btn btn-link"><i><img src="images/index_271.jpg"></i>${rolename}</a></h3>
       <ul style="border:1px solid #d4d1d1;">
         <li class="col-xs-4 col-sm-4 col-md-4 main-top"><a href="sendArticle/dispatch"><img src="images/index_10.jpg" alt=""/></a></li>
         <li class="col-xs-4 col-sm-4 col-md-4 main-top"><a href="sendArticle/backlog_manager"><img src="images/index_12.jpg" alt=""/></a></li>
         <li class="col-xs-4 col-sm-4 col-md-4 main-top"><a href="sendArticle/article_manager"><img src="images/index_14.jpg" alt=""/></a></li>
         <div class="clear"></div>
       </ul>
<!--快速通道-->
<!--通知公告-->
     <h3 style="border:1px solid #d4d1d1;"><a href="getNotices" class="btn btn-link"><i><img src="images/index_271.jpg"></i>通知公告</a></h3>
       <ul style="border:1px solid #d4d1d1;min-height:415px;">
          <c:forEach items="${noticelist}" var="notice">
           <li class="col-md-12 main-top1">
              <a href="notice/detail?id=${notice.id}">
                 <p>
                   <span  class="fl hang" title="${notice.caption}">
                     ${fn:substring(notice.caption,0,30) }
	                     <c:if test="${fn:length(notice.caption) > 30 }">
								...
						 </c:if>
                   </span>
                   <span class="fr"><fmt:formatDate value="${notice.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                 </p>
              </a>
           </li>
          </c:forEach>
         <div class="clear"></div>
       </ul>
<!--通知公告-->
<!--代办公文-->
      <h3 style="border:1px solid #d4d1d1;"><a href="sendArticle/backlog_manager" class="btn btn-link"><i><img src="images/index_271.jpg"></i>待办公文</a></h3>
        <ul style="border:1px solid #d4d1d1; min-height:210px;">
        <c:forEach items="${approvelist}" var="approve">
           <li class="col-md-12 main-top1">
              <a >
                 <p>
                   <span  class="fl hang" title="${approve.caption}">
                     ${fn:substring(approve.caption,0,30) }
	                     <c:if test="${fn:length(approve.caption) > 30 }">
								...
						 </c:if>
                   </span>
                   <span class="fr">${approve.realname}</span>
                   <span class="fr main-right_1"><fmt:formatDate value="${approve.approve_datetime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                    
                  </p>
              </a>
           </li>
          </c:forEach>
          <div class="clear"></div>
        </ul>
<!--代办公文-->
<!--公式信息-->
      <h3 style="border:1px solid #d4d1d1;"><a href="getArticleAll" class="btn btn-link"><i><img src="images/index_271.jpg"></i>公示信息</a></h3>
        <ul style="border:1px solid #d4d1d1;min-height:210px;">
          <c:forEach items="${send_articlelist}" var="send_article">
           <li class="col-md-12 main-top1">
              <a >
                 <p>
                   <span  class="fl hang" title="${send_article.caption}">
                   
                     ${fn:substring(send_article.caption,0,30) }
	                     <c:if test="${fn:length(send_article.caption) > 30 }">
								...
						 </c:if>
                   </span>
                   
						
                   <span class="fr"><fmt:formatDate value="${send_article.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                 
                  </p>
              </a>
           </li>
          </c:forEach>
           <div class="clear"></div>
        </ul>
<!--公式信息-->
  </div>
  <div class="col-md-5">
<!--公司动态-->
    <h3 style="border:1px solid #d4d1d1;"><a href="#" class="btn btn-link"><i><img src="images/index_271.jpg"></i>公司动态</a></h3>
          <div class="slide_container">
            <ul class="rslides" id="slider">
              <li>
                <img src="images/1.jpg" alt="">
                <p class="caption">01</p>
              </li>
              <li>
                <img src="images/1.jpg" alt="">
                <p class="caption">02</p>
              </li>
              <li>
                <img src="images/1.jpg" alt="">
                <p class="caption">03</p>
              </li>
              <li>
                <img src="images/2.jpg" alt="">
                <p class="caption">04</p>
              </li>
              <li>
                <img src="images/3.jpg" alt="">
                <p class="caption">05</p>
              </li>
            </ul>
         </div>
         <div class="clear"></div>
<!--公司动态-->
    <h3 style="border:1px solid #d4d1d1;"><a href="getForums" class="btn btn-link"><i><img src="images/index_271.jpg"></i>职工社区</a></h3>
      <ul style="border:1px solid #d4d1d1; min-height:765px;">
        <c:forEach items="${forumlist}" var="forum">
           <li class="col-md-12 main-top1">
              <a href="detailForum?id=${forum.id}">
                  <p style="color:#50afd7">${forum.caption}</p>
	                   <span  class="fl hang" title="${forum.content}">
	                     ${fn:substring(forum.content,0,30) }
		                     <c:if test="${fn:length(forum.content) > 30 }">
									...
							 </c:if>
	                   </span>
                       <span class="fr"><fmt:formatDate value="${forum.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                  </p>
              </a>
           </li>
          </c:forEach>
           <div class="clear"></div>
  </div>
</div>

</div>
<!--内容结束-->
<!--尾部开始-->
  <div class="clear"></div> 
  <div class="Footer" style="margin-top: 10px;">
   <p>哈尔滨市交通基础设施投资建设管理有限公司 版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持：鑫联华</p>
  </div>
<!--尾部结束-->
 <script src="js/index/responsiveslides.min.js"></script>
 <script src="js/index/slider.js"></script>
 <script type="text/javascript" src="js/sendArticle/history_manager.js"></script>
<!--尾部结束-->
</body>
</html>
