<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="../head.jsp"%>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-combined.min.css">  
<link rel="stylesheet" type="text/css" href="css/title/table.css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
<script type="text/javascript" src="js/init.js"></script>

<!--导航结束-->
<!--内容开始-->
<div class="main-right">
<!--面包屑导航-->
  <ol class="breadcrumb">
    <li><a href="#">当前位置:</a></li>
    <li><a href="#">公示信息</a></li>
  
  </ol>
<!--面包屑导航-->
<!--表单-->

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         
  <form class="form-horizontal registerform" action = "saveUserInfo" name="form1" method = "post" enctype='multipart/form-data' style="margin-top: 20px;">
  <div class="control-group">
      <label class="control-label"><span style="color:red;">*&nbsp;</span>主题</label>
      <div class="controls">
          <input type="text" class="input-medium" readonly="yes" value="李克强邀请中东欧..." style="width:90%;">
      </div>
  </div>
  <div class="control-group" style=" max-height: 200px;overflow:auto;">
  <table class="table table-hover table-bordered" style="width: 90%;margin: 0 auto;">
            <thead id="content1">
            <tr style="background-color:#EEEEEE;">
                <th>选择</th>
                <th>文件名</th>
                <th>下载</th>
            </tr>
            <tr style="background-color:#EEEEEE;">
                <th><input type="checkbox"></th>
                <th>李克强邀请中东欧...</th>
                <th><button class="btn btn-primary" type="submit">下载</button></th>
            </tr>
       
            </thead>
        </table>
    </div>
  <div class="control-group">
      <label class="control-label"><span style="color:red;">*&nbsp;</span>发起人</label>
      <div class="controls">
          <input type="text" class="input-medium" value="孟令超" readonly="yes">
      </div>
  </div>
   
  </div>
  
  </div>
  </form>
        
      </div><!-- /.modal-content -->
   </div><!-- /.modal -->
</div>
<!--内容结束-->
<!--尾部开始-->
  <div class="clear"></div> 
  <div class="Footer">
   <p>哈尔滨市交通基础设施投资建设管理有限公司 版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持：鑫联华</p>
 </div>
<!--尾部结束-->
  <script type="text/javascript">
      $(document).ready(function(){ 
            $(".table tr:odd").css("background-color","#fff");
      })
      </script>
</body>
</html>
