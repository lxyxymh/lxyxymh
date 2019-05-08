<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
   <title>易购后台管理中心</title>  
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
     <script src="${ctx}/resource/js/pintuer.js"></script>  
</head>
<style>
    .file1 {
        position: relative;
        display: inline-block;
        background: #D0EEFF;
        border: 1px solid #99D3F5;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #1E88C7;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;
    }
    .file1 input {
        position: absolute;
        font-size: 100px;
        right: 0;
        top: 0;
        opacity: 0;
    }
    .file1:hover {
        background: #AADFFD;
        border-color: #78C3F3;
        color: #004974;
        text-decoration: none;
    }
</style>
<body>
<script>
function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${ctx}/user/exAdd.do?type=3" enctype="multipart/form-data"> 
      <div class="form-group">
        <div class="label">
          <label>登陆名：</label>
        </div>
        <div class="field">
          <input id='user-name' type="text" class="input w50" name="userName"  data-validate="required:请输入名称" />         
          <div class="tips"></div>
        </div>
      </div> 
       <div class="form-group">
        <div class="label">
          <label>昵称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="nickName"  data-validate="required:请输入昵称" />         
          <div class="tips"></div>
        </div>
      </div> 
        <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input id='pass' type="text" class="input w50" name="passWord"/>         
          <div class="tips"></div>
        </div>
      </div> 
     <%--  <td>${data.code}</td>
             <td>${data.zy}</td>
             <td>${data.nj}</td>
             <td>${data.phone}</td> --%>
      <div class="form-group">
        <div class="label">
          <label>学号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="code"/>         
          <div class="tips"></div>
        </div>
      </div> 
       <div class="form-group">
        <div class="label">
          <label>专业：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="zy"/>         
          <div class="tips"></div>
        </div>
      </div> 
       <div class="form-group">
        <div class="label">
          <label>年级：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="nj"/>         
          <div class="tips"></div>
        </div>
      </div> 
       <div class="form-group">
        <div class="label">
          <label>手机号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="phone"/>         
          <div class="tips"></div>
        </div>
      </div> 
     <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
<script type="text/javascript">
$("#zp1").on("change","input[type='file']",function(){
    var filePath = $(this).val();
    var filePath = filePath.split('\\');
    var filePath = filePath[filePath.length-1];
    $('#file').val(filePath);
})
$('#user-name').on('blur',function(){
	var len = $(this).val().length;
	if(len<1||len>=12){
		alert('用户名长度不符合！');
		$(this).val("");
	}
	
})
$('#pass').on('blur',function(){
	var len = $(this).val().length;
	if(len<4||len>=8){
		alert('密码长度不符合！');
		$(this).val("");
	}
	
})
</script>
</html>