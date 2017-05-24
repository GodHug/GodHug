/*
 * 对选中的标签激活active状态，对先前处于active状态但之后未被选中的标签取消active
 * （实现左侧菜单中的标签点击后变色的效果）
 */
//所有模块信息
var mdList = null;

$(document).ready(function() {
	$('ul.nav > li').click(function(e) {
        //e.preventDefault(); //加上这句则  <<导航的>>   <a>标签会失效
		$('ul.nav > li').removeClass('active');
		$(this).addClass('active');
	});
});

/*
 * 解决ajax返回的页面中含有javascript的办法：
 * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
 */
function executeScript(html) {

	var reg = /<script[^>]*>([^\x00]+)$/i;
	// 对整段HTML片段按<\/script>拆分
	var htmlBlock = html.split("<\/script>");
	for ( var i in htmlBlock) {
		var blocks;// 匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
		if (blocks = htmlBlock[i].match(reg)) {
			// 清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
			var code = blocks[1].replace(/<!--/, '');
			try {
				eval(code);// 执行脚本
			} catch (e) {
				console.log("eval()处理出错"+e.message);
			}
		}
	}
}

/*
 * 利用div实现左边点击右边显示的效果（以id="content"的div进行内容展示） 注意：
 * ①：js获取网页的地址，是根据当前网页来相对获取的，不会识别根目录；
 * ②：如果右边加载的内容显示页里面有css，必须放在主页（即例中的index.jsp）才起作用
 * （如果单纯的两个页面之间include，子页面的css和js在子页面是可以执行的。 主页面也可以调用子页面的js。但这时要考虑页面中js和渲染的先后顺序 ）
 */
function showAtRight(url) {

	var xmlHttp;

	if (window.XMLHttpRequest) {
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlHttp = new XMLHttpRequest(); // 创建 XMLHttpRequest对象
	} else {
		// code for IE6, IE5
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	xmlHttp.onreadystatechange = function() {
		// onreadystatechange — 当readystate变化时调用后面的方法

		if (xmlHttp.readyState == 4) {
			// xmlHttp.readyState == 4 —— finished downloading response

			if (xmlHttp.status == 200) {
				// xmlHttp.status == 200 —— 服务器反馈正常

				document.getElementById("content").innerHTML = xmlHttp.responseText; // 重设页面中id="content"的div里的内容
				executeScript(xmlHttp.responseText); // 执行从服务器返回的页面内容里包含的JavaScript函数
			}
			// 错误状态处理
			else if (xmlHttp.status == 404) {
				alert("出错了☹   （错误代码：404 Not Found），……！");
				/* 对404的处理 */
				return;
			} else if (xmlHttp.status == 403) {
				alert("出错了☹   （错误代码：403 Forbidden），……");
				/* 对403的处理 */
				return;
			} else {
				alert("出错了☹   （错误代码：" + request.status + "），……");
				/* 对出现了其他错误代码所示错误的处理 */
				return;
			}
		}

	}

	// 把请求发送到服务器上的指定文件（url指向的文件）进行处理
	xmlHttp.open("GET", url, true); // true表示异步处理
	xmlHttp.send();
}

function requestPosts(i, url) {
    var $article = $(".article");
	$
			.ajax({
				url : url,
				dataType : "json",
				contentType : "application/json",
				type : "POST",
				data : '{"number":' + i + '}',
				success : function(data) {
                    $article.html("");
                    console.log(data);
					$
							.each(
									data,
									function(index, item) {
										console.log(item.id + item.postsname
												+ item.postsIsPublished
												+ item.postscreatetime);
										// 将数据库通过json取出的日期数据毫秒转换成普通日期,异步刷新不能使用<fmt>标签
										var date = new Date(
												item.postscreatetime);
										var standDate = date.getFullYear()
												+ "-"
												+ ("0" + (date.getMonth() + 1))
														.slice(-2)
												+ "-"
												+ ("0" + date.getDate())
														.slice(-2); // console.log("时间"+$date);
										var isPublished = item.postsIsPublished == true ? "已发表"
												: "未发表";
                                        var numForPublished = item.postsIsPublished == true? 2:3;
										$article
												.append('<h3><a>'
														+ item.postsname
														+ '</a></h3>'
														+ '<p><span>'
														+ item.postsmdname
														+ '</span><span>'
														+ standDate
														+ '</span><span>'
														+ isPublished
														+ '</span><span><a>置顶</a></span>'
														+ '<span><a href="###" onclick="showAtRight('
                                                        + "'/Blog/posts/editPage.action?id="
                                                        + item.id
                                                        + "'"
                                                        + ')">编辑</a></span><span><a href="###" onclick="deletePosts('
                                                        + numForPublished
                                                        + ','
														+ item.id
														+ ",'/Blog/posts/publishedPosts.action'"
                                                        + ')">删除</a></span></p>'
														+ '<p><span>阅读量：0</span><span>评论：31</span><span>收藏：5</span> <span>转发：0</span><a>分享</a></p>');
									})
				},
				error : function(data) {
					// 200的响应也有可能被认定为error，responseText中没有Message部分
					/* alert($.parseJSON(data.responseText).Message); */
					console.log("ERROR");
				},
				complete : function(data) {
					;// after success or error
				}
			});
}

function deletePosts(numForPublished,arrayId,url) {
    //console.log("删除posts"+arrayId);
    var formData;
    if (arrayId != null) {
        formData = new FormData();
        formData.append("arrayId", arrayId);
    }
    $.ajax({
                url : "/Blog/posts/delePosts.action",
                type : "post",
                data : formData,
                processData : false,
                contentType : false,
                success : function(data) {
                    /* window.clearInterval(timer); */
                    //console.log("over.." + data);
					//如果删除成功就跳转
                    requestPosts(numForPublished,url);
                },
                error : function(e) {
                    console.log("错误！！");

                }
            });
}
/*
 * $('#usertype').selectpicker({ 'selectedText': 'cat' });
 */

