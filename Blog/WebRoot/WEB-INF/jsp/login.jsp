<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- WEB-INF 是受保护目录，WEB-INF里面的文件只可以由servlet去访问，
		不能通过url地址栏去请求访问WebRoot根目录下面的文件可以直接通过url地址栏去访问，
		一般的index.jsp就放这里 。web-inf中可以跳到webroot下jsp
	-->
    <meta charset="UTF-8">
    <title>登录</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <link type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet">
</head>
<body>
<section class="loginSection">
    <div class="col-xs-4 col-xs-offset-5" style="margin-bottom: 20px">
        <ul class="nav nav-tabs" style="border-bottom: none" role="tablist" id="LoginRegisterTab">
            <li role="presentation" style="margin-left: 70px"><a href="#loginPane">登录</a></li>
            <li role="presentation"><a href="#registerPane">注册</a></li>
        </ul>
    </div>

    <div class="tab-content">
        <div class="tab-pane" id="loginPane">
            <form id="loginForm" class="form-horizontal" role="form" action="${pageContext.request.contextPath }/user/loginSubmit.action">
                <div class="form-group-lg">
                    <label for="inputName" class="col-sm-5 control-label">账号</label>
                    <div class="col-sm-3" style="margin-bottom:50px">
                        <input type="text" name="username" class="form-control input-lg" id="inputLoginName" placeholder="Account">
                    </div>
                </div>
                <div class="form-group-lg">
                    <label for="inputPassword" class="col-sm-5 control-label">密码</label>
                    <div class="col-sm-3" style="margin-bottom:20px">
                        <input type="password" name="userpassword" class="form-control input-lg" id="inputLoginPassword" placeholder="Password">
                    </div>
                </div>
                <div class="form-group-lg">
                    <div class="col-sm-offset-5 col-sm-10">
                        <div class="checkbox" style="margin-bottom:20px">
                            <label>
                                <input type="checkbox" name="checkbox"><span>Remember me</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-5">
                        <button type="submit" class="btn btn-block btn-info">登录</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="tab-pane" id="registerPane">
            <form id="registerForm" class="form-horizontal" role="form">
                <div class="form-group-lg">
                    <label for="inputName" class="col-sm-5 control-label">账号</label>
                    <div class="col-sm-3" style="margin-bottom:50px">
                        <input type="text" name="username" class="form-control input-lg" id="inputName" placeholder="Account">
                    </div>
                </div>
                <div class="form-group-lg">
                    <label for="inputPassword" class="col-sm-5 control-label">密码</label>
                    <div class="col-sm-3" style="margin-bottom:50px">
                        <input type="password" name="userpassword" class="form-control input-lg" id="inputPassword" placeholder="Password">
                    </div>
                </div>
                <div class="form-group-lg">
                    <label for="birthday" class="col-sm-5 control-label">生日</label>
                    <div class="col-sm-3" style="margin-bottom:20px">
                        <input type="date" name="birthday" class="form-control input-lg" id="birthday" placeholder="生日">
                    </div>
                </div>
                <div class="form-group-lg">
                    <label for="sexMan" class="col-sm-5 control-label">性别</label>
                    <div class="col-sm-3" style="margin-bottom:20px;margin-top: 12px">
                        <span style="margin-right: 10px">男</span><input id="sexMan" value="男" class="radio-inline" style="margin-right: 20px" name="sex" type="radio">
                        <span style="margin-right: 10px">女</span><input  id="sexWomen" value="女" class="radio-inline" style="margin-right: 20px" name="sex" type="radio">
                    </div>
                </div>
                <div class="form-group-lg">
                    <div class="col-sm-offset-5 col-sm-10">
                        <div class="checkbox" style="margin-bottom:20px">
                            <label>
                                <input type="checkbox" name="checkbox"><span>Remember me</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-5" >
                        <button type="button" class="btn btn-block btn-info">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<script>
    $(function () {
        $('#LoginRegisterTab a:first').tab('show');//初始化显示哪个tab

        $('#LoginRegisterTab a').click(function (e) {
            e.preventDefault();//阻止a链接的跳转行为
            $(this).tab('show');//显示当前选中的链接及关联的content
            if($(this).html() == "登录"){
                $("#registerPane :input").val(""); //清空
            }else{
                $("#loginPane :input").val(""); //清空
            }
            //console.log($(this).html());//获取点击tab的文本值
        })
    })
</script>
</body>
</html>