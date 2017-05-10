<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>无名飞飞-个人开发技术博客</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/img/websiteICO.ico" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath }/img/websiteICO.ico" type="image/x-icon">
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css"  rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/cssReset.css" type="text/css"  rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/common.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/index.css" type="text/css"  rel="stylesheet">
</head>
<body>
    <div class="header">
        <div class="top_container">
            <div class="top_nav">
                <ul class="simple-toggle" id="menu">
                    <li class="active"><a href="index.html">首页</a></li>
                    <li><a href="about.html">新随笔</a></li>
                    <li><a href="gallery.html">博客专题</a></li>
                    <!-- logo -->
                    <li class="logo"><a href="index.html"><img src="/pic/pagePic/logo.png" alt=""></a></li>
                    <!-- logo -->
                    <li><a href="faq.html">联系</a></li>
                    <li><a href="typography.html">订阅</a></li>
                    <li><a href="${pageContext.request.contextPath }/user/manager.action">管理</a></li>
                </ul>
            </div>
        </div>
    </div>
    <section class="section_content">
        <div class="content_resize">
            <div class="mainbar">
	            <c:if test="${page != null}">
					<c:forEach items="${page.list}" var="pageList">
						<div class="article">
                  		  <p><span class="article_date"><fmt:formatDate value="${pageList.postscreatetime }"
							pattern="yyyy-MM-dd" /></span>
	                        <span class="article_link">
	                            Posted by
	                            <a href="#">Owner</a> &nbsp;|&nbsp; Filed under
	                            <a href="#">templates</a>,
	                            <a href="#">internet</a>, with
	                            <a href="#" class="com">11 Comments</a>
	                        </span>
	                  	 </p>
	                    <div class="title">${pageList.postsname }</div>
	                    <div class="clr"></div>
	                    <img src="/pic/pagePic/img1.jpg">
	                    <div>${pageList.postscontent }</div>
	                    <p class="spec"><a href="#" class="rm">Read more »</a></p>
	                </div>
					</c:forEach>
				</c:if>
				<div class="pageGuide fl">
                <nav>
                    <ul class="pagination">
	                    <c:if test="${page.total != null }">
	                 	   <li><a href="${pageContext.request.contextPath }/posts/index.action?pageNum=${page.prePage}">&laquo;</a></li>
		                 	   <c:forEach var="i" begin="1" end="${page.total}" step="1"> 
									<li id="${i}"><a href="${pageContext.request.contextPath }/posts/index.action?pageNum=${i}">${i}</a></li>
							   </c:forEach>
	                       <li><a href="${pageContext.request.contextPath }/posts/index.action?pageNum=${page.nextPage }">&raquo;</a></li>
	                    </c:if>
                    </ul>
                </nav>
            </div>
            </div>
           
            <div class="slidebar">
                <div class="searchform">
                    <form id="formsearch" name="formsearch" method="post" action="">
                        <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text"></span>
                        <input name="button_search" src="/pic/pagePic/search_btn.gif" class="button_search" type="image">
                    </form>
                </div>
                <div class="sb_gadget">
                    <div class="clr"></div>
                    <ul class="sb_menu">
                        <div class="sb_menu_title">
                            <span id="zuixin">最新</span>
                            <span id="zuire">最热</span>
                            <span id="suiji">随机</span>
                        </div>
                        <div class="tabcontent">
                            <ul class="sidetab1">
                                <c:if test="${psListACCreateTime != null}">
                                    <c:forEach items="${psListACCreateTime}" var="posts">
                                        <li>
                                            <a href="###">${posts.postsname}</a>
                                            <span>(${posts.reviewnumber})</span>
                                        </li>
                                    </c:forEach>
                                </c:if>
                            </ul>
                            <ul class="sidetab2">
                                <c:if test="${psListACHot != null}">
                                    <c:forEach items="${psListACHot}" var="posts">
                                        <li>
                                            <a href="###">${posts.postsname}</a>
                                            <span>(${posts.reviewnumber})</span>
                                        </li>
                                    </c:forEach>
                                </c:if>
                            </ul>
                            <ul class="sidetab3">
                                <c:if test="${psListACRandom != null}">
                                    <c:forEach items="${psListACRandom}" var="posts">
                                        <li>
                                            <a href="###">${posts.postsname}</a>
                                            <span>(${posts.reviewnumber})</span>
                                        </li>
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </div>
                        <object type="application/x-shockwave-flash" style="outline:none;" data="http://wuzhuti.cn/resources/flash/hamster.swf?" width="242" height="184" class=""><param name="movie" value="https://wuzhuti.cn/resources/flash/hamster.swf?"><param name="AllowScriptAccess" value="always"><param name="wmode" value="transparent"></object>
                        <div class="fenlei">
                            <div class="sb_menu_title">分类目录</div>
                            <ul class="categories">
                                <c:if test="${mdList != null}">
                                    <c:forEach items="${mdList}" var="module">
                                        <li><a>${module.mdname}</a><span>(3)</span></li>
                                        <c:if test="${module.twoMdList != null}">
                                            <ul class="child">
                                                <c:forEach items="${module.twoMdList}" var="twoMd">
                                                  <li><a>${twoMd.mdname}</a><span>(3)</span></li>
                                                </c:forEach>
                                            </ul>
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                                <li><a>学习</a><span>(3)</span></li>
                                <li><a>娱乐</a><span>(5)</span></li>
                                <li><a>spring学习</a><span>(7)</span></li>
                            </ul>
                        </div>
                    </ul>
                </div>
            </div>

        </div>
    </section>
    <div class="end">
        <div class="wrap cf"> <div class="widget-area4"><h3>随机推荐</h3> <ul> <li><a href="http://wuzhuti.cn/1222.html" target="_blank" rel="bookmark" title="Linux下启动Tomcat" style="color: rgb(105, 105, 105);">Linux下启动Tomcat</a></li> <li><a href="http://wuzhuti.cn/655.html" target="_blank" rel="bookmark" title="JQuery EasyUI numberbox(数字框)" style="color: rgb(105, 105, 105);">JQuery EasyUI numberbox(数字框)</a></li> <li><a href="http://wuzhuti.cn/812.html" target="_blank" rel="bookmark" title="js 金额格式化方法" style="color: rgb(105, 105, 105);">js 金额格式化方法</a></li> <li><a href="http://wuzhuti.cn/1548.html" target="_blank" rel="bookmark" title="小站新增[时光轴]页面. 记录网站大事记" style="color: rgb(105, 105, 105);">小站新增[时光轴]页面. 记录网站大事记</a></li> <li><a href="http://wuzhuti.cn/1490.html" target="_blank" rel="bookmark" title="HTML5 开源前端框架 Amaze UI 1.0" style="color: rgb(105, 105, 105);">HTML5 开源前端框架 Amaze UI 1.0</a></li> <li><a href="http://wuzhuti.cn/2205.html" target="_blank" rel="bookmark" title="微信公众平台文章和标题里如何插入emoji表情特殊符号" style="color: rgb(105, 105, 105);">微信公众平台文章和标题里如何插入emoji表情特殊符号</a></li> <li><a href="http://wuzhuti.cn/2171.html" target="_blank" rel="bookmark" title="关于java图片列表 图片压缩 总结">关于java图片列表 图片压缩 总结</a></li> </ul> </div><div class="widget-area4"><h3>最新评论</h3> <ul> <li class="reccomtli cf"><span class="comeravatar"><img alt="" src="http://cn.gravatar.com/avatar/b4fd4729a2dea2c78e326a012eedb5a2?s=28&amp;d=monsterid&amp;r=pg" srcset="http://cn.gravatar.com/avatar/b4fd4729a2dea2c78e326a012eedb5a2?s=56&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-28 photo" height="28" width="28"></span><a href="http://wuzhuti.cn/msgboard/#comment-3260" target="_blank" title="在 留言板 发表的评论" style="color: rgb(105, 105, 105);">很强势，无意中闯进了这个地...</a><br><span class="comer">by flyat</span><span class="comertime">2016-12-30 16:10:03</span></li><li class="reccomtli cf"><span class="comeravatar"><img alt="" src="http://cn.gravatar.com/avatar/7d1b342d9148069543621e789b85b779?s=28&amp;d=monsterid&amp;r=pg" srcset="http://cn.gravatar.com/avatar/7d1b342d9148069543621e789b85b779?s=56&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-28 photo" height="28" width="28"></span><a href="http://wuzhuti.cn/2715.html#comment-3257" target="_blank" title="在 WordPress自动同步到新浪微博头条文章 发表的评论" style="color: rgb(105, 105, 105);">很有用的文章！！！学习了。</a><br><span class="comer">by PHP程序员雷雪松</span><span class="comertime">2016-12-26 17:45:05</span></li><li class="reccomtli cf"><span class="comeravatar"><img alt="" src="http://cn.gravatar.com/avatar/7d1b342d9148069543621e789b85b779?s=28&amp;d=monsterid&amp;r=pg" srcset="http://cn.gravatar.com/avatar/7d1b342d9148069543621e789b85b779?s=56&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-28 photo" height="28" width="28"></span><a href="http://wuzhuti.cn/2570.html#comment-3256" target="_blank" title="在 HTML5图片上传利用FileReader获取图片尺寸和图片预览 发表的评论" style="color: rgb(105, 105, 105);">看完收获很多！！！</a><br><span class="comer">by PHP程序员雷雪松</span><span class="comertime">2016-12-26 17:44:11</span></li><li class="reccomtli cf"><span class="comeravatar"><img alt="" src="http://cn.gravatar.com/avatar/8e0c0c592794d3255675cfde4019d0a7?s=28&amp;d=monsterid&amp;r=pg" srcset="http://cn.gravatar.com/avatar/8e0c0c592794d3255675cfde4019d0a7?s=56&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-28 photo" height="28" width="28"></span><a href="http://wuzhuti.cn/2729.html#comment-3254" target="_blank" title="在 wordpress 深度集成SyntaxHighlighter实现代码高亮 发表的评论" style="color: rgb(105, 105, 105);">没什么好说的，提前祝博主新...</a><br><span class="comer">by 挖宝网</span><span class="comertime">2016-12-26 16:34:54</span></li><li class="reccomtli cf"><span class="comeravatar"><img alt="" src="http://cn.gravatar.com/avatar/09ca8d813789410468e8696bf85d4d4a?s=28&amp;d=monsterid&amp;r=pg" srcset="http://cn.gravatar.com/avatar/09ca8d813789410468e8696bf85d4d4a?s=56&amp;d=monsterid&amp;r=pg 2x" class="avatar avatar-28 photo" height="28" width="28"></span><a href="http://wuzhuti.cn/msgboard/#comment-3253" target="_blank" title="在 留言板 发表的评论" style="color: rgb(105, 105, 105);">会玩、主题很强势！里面的点...</a><br><span class="comer">by 留记录</span><span class="comertime">2016-12-26 15:24:14</span></li> </ul> </div><div class="widget-area4"><h3>标签云</h3> <div class="devefootertag"> <a href="http://wuzhuti.cn/tag/java/" class="tag-link-234 tag-link-position-1" title="58个话题" style="font-size: 12px;">Java</a><a href="http://wuzhuti.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a><a href="http://wuzhuti.cn/tag/%e7%a4%ba%e4%be%8b%e4%bb%a3%e7%a0%81/" class="tag-link-102 tag-link-position-3" title="44个话题" style="font-size: 12px;">示例代码</a><a href="http://wuzhuti.cn/tag/easyui/" class="tag-link-84 tag-link-position-4" title="39个话题" style="font-size: 12px;">EasyUI</a><a href="http://wuzhuti.cn/tag/easyui-%e6%95%99%e7%a8%8b/" class="tag-link-100 tag-link-position-5" title="38个话题" style="font-size: 12px;">EasyUI 教程</a><a href="http://wuzhuti.cn/tag/wordpress/" class="tag-link-50 tag-link-position-6" title="33个话题" style="font-size: 12px;">WordPress</a><a href="http://wuzhuti.cn/tag/linux/" class="tag-link-236 tag-link-position-7" title="17个话题" style="font-size: 12px;">Linux</a><a href="http://wuzhuti.cn/tag/wp%e4%bc%98%e5%8c%96/" class="tag-link-159 tag-link-position-8" title="17个话题" style="font-size: 12px;">WP优化</a><a href="http://wuzhuti.cn/tag/%e7%96%91%e9%9a%be%e9%97%ae%e9%a2%98/" class="tag-link-235 tag-link-position-9" title="16个话题" style="font-size: 12px;">疑难问题</a><a href="http://wuzhuti.cn/tag/iphone/" class="tag-link-13 tag-link-position-10" title="14个话题" style="font-size: 12px;">iPhone</a><a href="http://wuzhuti.cn/tag/web%e5%89%8d%e7%ab%af/" class="tag-link-96 tag-link-position-11" title="13个话题" style="font-size: 12px;">Web前端</a><a href="http://wuzhuti.cn/tag/springmvc/" class="tag-link-83 tag-link-position-12" title="12个话题" style="font-size: 12px;">SpringMVC</a><a href="http://wuzhuti.cn/tag/windows/" class="tag-link-70 tag-link-position-13" title="11个话题" style="font-size: 12px;">Windows</a><a href="http://wuzhuti.cn/tag/%e5%be%ae%e4%bf%a1%e5%85%ac%e4%bc%97%e5%b9%b3%e5%8f%b0/" class="tag-link-101 tag-link-position-14" title="10个话题" style="font-size: 12px;">微信公众平台</a><a href="http://wuzhuti.cn/tag/%e5%ad%a6%e4%b9%a0%e7%ac%94%e8%ae%b0/" class="tag-link-263 tag-link-position-15" title="10个话题" style="font-size: 12px;">学习笔记</a><a href="http://wuzhuti.cn/tag/js/" class="tag-link-79 tag-link-position-16" title="9个话题" style="font-size: 12px;">JavaScript</a><a href="http://wuzhuti.cn/tag/spring/" class="tag-link-82 tag-link-position-17" title="9个话题" style="font-size: 12px;">Spring</a><a href="http://wuzhuti.cn/tag/ios8/" class="tag-link-126 tag-link-position-18" title="8个话题" style="font-size: 12px;">iOS8</a><a href="http://wuzhuti.cn/tag/mysql/" class="tag-link-206 tag-link-position-19" title="8个话题" style="font-size: 12px;">MySQL</a><a href="http://wuzhuti.cn/tag/web/" class="tag-link-89 tag-link-position-20" title="7个话题" style="font-size: 12px;">Web开发</a><a href="http://wuzhuti.cn/tag/%e5%85%8d%e6%8f%92%e4%bb%b6/" class="tag-link-153 tag-link-position-21" title="7个话题" style="font-size: 12px;">免插件</a><a href="http://wuzhuti.cn/tag/github/" class="tag-link-324 tag-link-position-22" title="7个话题" style="font-size: 12px;">GitHub</a><a href="http://wuzhuti.cn/tag/git/" class="tag-link-239 tag-link-position-23" title="7个话题" style="font-size: 12px;">Git</a><a href="http://wuzhuti.cn/tag/js-jquery/" class="tag-link-98 tag-link-position-24" title="6个话题" style="font-size: 12px;">Js &amp; JQuery</a><a href="http://wuzhuti.cn/tag/%e7%b2%be%e9%80%89%e8%bd%af%e4%bb%b6/" class="tag-link-28 tag-link-position-25" title="6个话题" style="font-size: 12px;">精选软件</a><a href="http://wuzhuti.cn/tag/%e5%bb%ba%e7%ab%99%e6%8a%80%e5%b7%a7/" class="tag-link-55 tag-link-position-26" title="6个话题" style="font-size: 12px;">建站技巧</a><a href="http://wuzhuti.cn/tag/%e6%89%8b%e6%9c%ba/" class="tag-link-67 tag-link-position-27" title="6个话题" style="font-size: 12px;">手机</a><a href="http://wuzhuti.cn/tag/%e4%b9%b1%e7%a0%81/" class="tag-link-139 tag-link-position-28" title="5个话题" style="font-size: 12px;">乱码</a><a href="http://wuzhuti.cn/tag/%e7%bd%91%e9%a1%b5%e7%89%b9%e6%95%88/" class="tag-link-108 tag-link-position-29" title="5个话题" style="font-size: 12px;">网页特效</a><a href="http://wuzhuti.cn/tag/%e7%ae%97%e6%b3%95/" class="tag-link-150 tag-link-position-30" title="5个话题" style="font-size: 12px;">算法</a><a href="http://wuzhuti.cn/tag/%e4%ba%92%e8%81%94%e7%bd%91/" class="tag-link-68 tag-link-position-31" title="5个话题" style="font-size: 12px;">互联网</a><a href="http://wuzhuti.cn/tag/%e6%95%b0%e6%8d%ae%e5%ba%93/" class="tag-link-156 tag-link-position-32" title="5个话题" style="font-size: 12px;">数据库</a><a href="http://wuzhuti.cn/tag/free/" class="tag-link-149 tag-link-position-33" title="5个话题" style="font-size: 12px;">免费</a><a href="http://wuzhuti.cn/tag/%e6%b6%a8%e5%a7%bf%e5%8a%bf/" class="tag-link-147 tag-link-position-34" title="5个话题" style="font-size: 12px;">涨姿势</a><a href="http://wuzhuti.cn/tag/seo-2/" class="tag-link-63 tag-link-position-35" title="4个话题" style="font-size: 12px;">SEO</a><a href="http://wuzhuti.cn/tag/%e7%bd%91%e7%bb%9c%e8%90%a5%e9%94%80/" class="tag-link-42 tag-link-position-36" title="4个话题" style="font-size: 12px;">网络营销</a><a href="http://wuzhuti.cn/tag/%e7%a8%8b%e5%ba%8f%e7%8c%bf/" class="tag-link-169 tag-link-position-37" title="4个话题" style="font-size: 12px;">程序猿</a><a href="http://wuzhuti.cn/tag/wp%e6%8f%92%e4%bb%b6/" class="tag-link-66 tag-link-position-38" title="4个话题" style="font-size: 12px;">WP插件</a><a href="http://wuzhuti.cn/tag/tomcat/" class="tag-link-118 tag-link-position-39" title="4个话题" style="font-size: 12px;">Tomcat</a><a href="http://wuzhuti.cn/tag/%e6%8a%98%e8%85%be%e4%bb%a3%e7%a0%81/" class="tag-link-191 tag-link-position-40" title="4个话题" style="font-size: 12px;">折腾代码</a> </div> </div> </div>
        <div class="corig"> <div class="container cf"> <p class="free left"> 本博客文章仅供学习和参考，如侵犯到您的权益，请联系站长删除！<br> © 2014-2016 <a href="http://wuzhuti.cn">无主题</a> 本站采用[<a rel="nofollow license" target="_blank" href="http://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh">署名-非商业性使用-相同方式共享 4.0 国际</a>]进行许可&nbsp; <a href="http://www.miitbeian.gov.cn/" rel="external nofollow" target="_blank">辽ICP备14002751号-2</a> <a href="http://www.wuzhuti.cn/sitemap.html">站点地图 </a> </p> <p class="right cori"><br>博客基于 <a href="http://wordpress.org/" rel="external nofollow" target="_blank">WordPress</a> 技术构建，主题基于 <a href="http://ongakuer.com/archives/deve-theme/" rel="external nofollow" target="_blank">Deve </a>修改</p> <div class="hide"></div> </div> </div>
    </div>
    <script src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
    	/* 对当前页的分页按钮渲染效果 ,jstl可以存在于js和html页面中*/
    	window.onload=function(){ 
    		var pageNum = document.getElementById("${page.pageNum }");
            pageNum.className = 'active'; 
            /* alert(pageNum); */
		}
        $("div.sb_menu_title span").click(function () {
            var whichClick = $(this).html();
            $(".tabcontent ul").css("display","none");
            if(whichClick == "最新"){
                console.log("最新");
                $('.sidetab1').css("display","block");
            }else if(whichClick == "最热"){
                console.log("最热");
                $('.sidetab2').css("display","block");
            }else if(whichClick == "随机"){
                console.log("随机");
                $('.sidetab3').css("display","block");
            }

        })
    </script>
</body>
</html>