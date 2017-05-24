<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Skaural-个人开发技术博客</title>
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
                            <div class="article_head">
                                <span class="article_date">
                                      <fmt:formatDate value="${pageList.postscreatetime }" pattern="yyyy-MM-dd" />
                                  </span>
                                <span class="article_link">
                                    Writen by
                                    <a href="#">${pageList.postsauthorid}</a> &nbsp;|&nbsp; File under
                                    <a href="#">${pageList.postsmdname}</a>,Date at
                                    <a href="#"><fmt:formatDate value="${pageList.postscreatetime}" pattern="YYYY-MM-dd"/></a>, with
                                    <a href="#" class="com">${pageList.reviewnumber} Comments</a>
                                </span>
                                <h2 class="post-tit">
                                    <a href="/posts/viewActile.action?id=${pageList.id}">${pageList.postsname }</a>
                                </h2>
                                <div class="post-meta">
                                    <span class="cat">
                                        <a href="http://sunruxue.cn/category/website/websiteplatform/wp/" rel="tag">WordPress</a>
                                    </span>
                                    <span class="time">2016.12.5</span>
                                    <span class="comt">
                                        <a href="http://sunruxue.cn/2729.html#comments">评论(39)</a>
                                    </span>
                                    <span class="view">阅读405</span>
                                </div>
                            </div>
                            <div class="post-thumbnail">
                                <a class="postsPic" id="${pageList.id}${pageList.postsname}" href="###" title="${pageList.postsname}">
                                    <img class="thumb" src="${pageList.postspic}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                作为软件开发类技术博客，不可缺少的功能就是代码高亮功能。网上也有很多插件可以实现代码高亮功能，如：CodeColorer 、WP-Syntax、WP-Code 、Crayon Syntax Highlighter、WP Code Highlight。这里不做过多评价。本文主要讲述深度集成 SyntaxHighlighter 实现代码高亮功能，而非插件形式。本文使用的 SyntaxHighligh...
                            </div>
                            <c:if test="${pageList.labelList != null}">
                                <div class="post-foot">
                                    <span class="tag">
                                        &nbsp;标签：&nbsp;
                                        <c:forEach items="${pageList.labelList}" var="label">
                                            <a href="http://sunruxue.cn/tag/wordpress/" rel="tag">${label.name}&nbsp;</a>
                                        </c:forEach>
                                    </span>
                                </div>
                            </c:if>
	                    <p class="spec"><a href="#" class="rm">Read more »</a></p>
	                </div>
					</c:forEach>
				</c:if>
				<div class="pageGuide fl">
                    <ul class="pagination">
	                    <c:if test="${page.pages != null }">
	                 	   <li><a href="${pageContext.request.contextPath }/index.action?pageNum=${page.prePage}">&laquo;</a></li>
		                 	   <c:forEach var="i" begin="1" end="${page.pages}" step="1">
									<li id="${i}"><a href="${pageContext.request.contextPath }/index.action?pageNum=${i}">${i}</a></li>
							   </c:forEach>
	                       <li><a href="${pageContext.request.contextPath }/index.action?pageNum=${page.nextPage }">&raquo;</a></li>
	                    </c:if>
                    </ul>
                    <span class="pageNumShow">每页显示></span>
                    <select id="twousertype" class="btn-sm" data-live-search="false">
                        <option value="0">1</option>
                        <option value="0">3</option>
                        <option value="1">5</option>
                        <option value="2">9</option>
                    </select>
            </div>
            </div>
            <div class="slidebar">
                <div class="searchform">
                    <form id="formsearch" name="formsearch" method="post" action="">
                        <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="你搜搜" type="text"></span>
                        <input name="button_search" src="/pic/pagePic/search_btn.gif" class="button_search" type="image">
                    </form>
                </div>
                <div class="sb_gadget">
                    <div class="clr"></div>
                    <ul class="sb_menu">
                        <div class="widget-area widget-sidebar">
                            <div class="sb_menu_title">
                                <span id="zuixin"><a class="sidetabcurrent" title="最新的文章" href="###">最新</a></span>
                                <span id="zuire"><a title="最热的文章" href="###">最热</a></span>
                                <span id="suiji"><a title="随机的文章" href="###">随机</a></span>
                            </div>
                            <div class="tabcontent">
                                <ul class="sidetab1">
                                    <c:if test="${psListACCreateTime != null}">
                                        <c:forEach items="${psListACCreateTime}" var="posts">
                                            <li>
                                                <c:set var="postsName" value="${posts.postsname}"/>
                                                <c:if test="${postsName.length()>14}">
                                                    <a href="###" title="${postsName}">${fn:substring(postsName, 0, 14)}...</a>
                                                </c:if>
                                                <c:if test="${postsName.length()<14}">
                                                    <a href="###" title="${postsName}">${postsName}</a>
                                                </c:if>
                                                <span>(${posts.reviewnumber})</span>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                                <ul class="sidetab2">
                                    <c:if test="${psListACHot != null}">
                                        <c:forEach items="${psListACHot}" var="posts">
                                            <li>
                                                <a href="###" title="${posts.postsname}">${posts.postsname}</a>
                                                <span>(${posts.reviewnumber})</span>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                                <ul class="sidetab3">
                                    <c:if test="${psListACRandom != null}">
                                        <c:forEach items="${psListACRandom}" var="posts">
                                            <li>
                                                <a href="###" title="${posts.postsname}">${posts.postsname}</a>
                                                <span>(${posts.reviewnumber})</span>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                        <object type="application/x-shockwave-flash" style="outline:none;" data="http://sunruxue.cn/resources/flash/hamster.swf?" width="242" height="184" class=""><param name="movie" value="https://sunruxue.cn/resources/flash/hamster.swf?"><param name="AllowScriptAccess" value="always"><param name="wmode" value="transparent"></object>
                        <div class="fenlei">
                            <div class="sb_menu_title">分类目录</div>
                            <ul class="categories">
                                <c:if test="${mdList != null}">
                                    <c:forEach items="${mdList}" var="module">
                                        <li><a title="${module.mdname}">${module.mdname}</a><span>(${module.postsNum})</span></li>
                                        <c:if test="${module.twoMdList != null && module.twoMdList[0].mdname != null}">
                                            <ul class="child">
                                                <c:forEach items="${module.twoMdList}" var="twoMd">
                                                  <li><a title="${twoMd.mdname}">${twoMd.mdname}</a><span>(${twoMd.postsNum})</span></li>
                                                </c:forEach>
                                            </ul>
                                        </c:if>
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="clear"></div>
        <div class="wrap cf">
            <div class="widget-area4">
                <h3>随机推荐</h3>
                <ul>
                    <li>
                        <a href="###" target="_blank" rel="bookmark" title="">心碎！iPhone 6模型曝光：就是大号5s</a>
                    </li>
                    <li>
                        <a href="###" target="_blank" rel="bookmark" title="">键盘为什么这么布局</a>
                    </li>
                </ul>
            </div>
            <div class="widget-area4">
                <h3>最新评论</h3>
                <ul>
                    <li class="reccomtli cf">
                        <span class="comeravatar">
                            <img alt="" src="" srcset="" class="avatar avatar-28 photo" height="28" width="28">
                        </span>
                        <a href="" target="_blank" title="">需要向博主学习的地方还有很...</a><br>
                        <span class="comer">by 三五营销</span>
                        <span class="comertime">2017-01-05 14:43:18</span>
                    </li>
                    <li class="reccomtli cf">
                        <span class="comeravatar">
                            <img alt="" src="" srcset="" class="avatar avatar-28 photo" height="28" width="28">
                        </span>
                        <a href="" target="_blank" title="">需要向博主学习的地方还有很...</a><br>
                        <span class="comer">by 天神低调</span>
                        <span class="comertime">2017-01-05 14:43:18</span>
                    </li>
                </ul>
            </div>
            <div class="widget-area4">
                <h3>标签云</h3>
                <div class="devefootertag">
                    <a href="http://sunruxue.cn/tag/java/" class="tag-link-234 tag-link-position-1" title="58个话题" style="font-size: 12px;">Java</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                    <a href="http://sunruxue.cn/tag/jquery/" class="tag-link-99 tag-link-position-2" title="46个话题" style="font-size: 12px;">JQuery</a>
                </div>
            </div>
        </div>
        <div class="corig">
            <div class="container cf">
                <p class="free left"> 本博客文章仅供学习和参考，如侵犯到您的权益，请联系站长删除！<br>
                    © 2014-2016
                    <a href="http://sunruxue.cn/">无主题</a>
                    本站采用[
                    <a rel="nofollow license" target="_blank" href="http://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh">署名-非商业性使用-相同方式共享4.0 国际</a>
                    ]进行许可&nbsp;
                    <a href="http://www.miitbeian.gov.cn/" rel="external nofollow" target="_blank">辽ICP备14002751号-2</a>
                    <a href="http://www.wumingzhe.cn/sitemap.html">站点地图 </a>
                </p>
                <p class="right cori"><br>
                    博客基于
                    <a href="http://wordpress.org/" rel="external nofollow" target="_blank">WordPress</a>
                    技术构建，主题基于
                    <a href="http://ongakuer.com/archives/deve-theme/" rel="external nofollow" target="_blank">Deve </a>
                    修改
                </p>
                <div class="hide"></div>
            </div>
        </div>
    </footer>
    <script src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
    	/* 对当前页的分页按钮渲染效果 ,jstl可以存在于js和html页面中*/
    	window.onload=function(){ 
    		var pageNum = document.getElementById("${page.pageNum }");
            pageNum.className = 'active'; 
            /* alert(pageNum); */
		}
		$s1 = $('.sidetab1');
        $s2 = $('.sidetab2');
        $s3 = $('.sidetab3');
        $("div.sb_menu_title span a").click(function () {
            var whichClick = $(this).html();
            $("div.sb_menu_title span a").removeClass("sidetabcurrent");
            $(".tabcontent ul").css("display","none");
            $(this).addClass("sidetabcurrent");
            if(whichClick == "最新"){
                $s1.css("display","block");
            }else if(whichClick == "最热"){
                $s2.css("display","block");
            }else if(whichClick == "随机"){
                $s3.css("display","block");
            }
        })
        var postt_humbnail_a_id;//获取到图片连接的id
        $(".post-thumbnail .postsPic").hover(function () {
            postt_humbnail_a_id = $(this).attr("id");
            console.info(postt_humbnail_a_id);
            $("#"+postt_humbnail_a_id+" img").css("transform","scale(1.1)");
            $(this).toggleClass("abc");
        },function () {
            $("#"+postt_humbnail_a_id+" img").css("transform","scale(1)");
            $(this).toggleClass("abc");
        })
        $("#twousertype").change(function () {
            console.log("改变");
        })
    </script>
</body>
</html>