<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>编辑</title>
    <link type="text/css"
          href="${pageContext.request.contextPath }/css/summernote.css"
          rel="stylesheet">
</head>
<body>
<form id="editPostsForm" role="form" class="col-md-9" method="post"
      action="${pageContext.request.contextPath}/posts/editPosts.action">
    <label for="postsTitle" style="margin-top: 30px;">标题</label> <input
        name="postsTitle" id="postsTitle" type="text" class="form-control input-lg"
        style="margin-bottom: 30px;" id="postsname" placeholder="Title">
    <div id="postsTitleAlert"
         class="alert alert-warning alert-dismissible hide" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
        </button>
        <strong>Warning!</strong> Better check yourself, you're not looking
        too good.
    </div>
    <label for="summernote" for="summernote">文章内容</label>
    <div id="summernote"></div>
    <label for="postsCoverPic">选择封面图片</label> <input name="postsCoverPic"
                                                     type="file" id="postsCoverPic"> <label class="control-label"
                                                                                            style="margin-top: 30px;">分组:</label>
    <select id="postsWhereMd" name="postsWhereMd" class="btn-sm" style="margin-bottom: 15px;">

    </select>
    <select id="twousertype" class="btn-sm" data-live-search="false" style="visibility: hidden;">

    </select>
    <br/>
    <div class="checkbox">
        <label> <input type="checkbox"> Check me out
        </label>
    </div>
    <input id="submitButtonPublished" type="button"
           class="btn btn-success" value="发布"/> <input id="submitButtonSava"
                                                       type="button" class="btn btn-success" value="存草稿"/>
</form>
<script>
    $(document).ready(function () {
        console.log("进入summernote");
        $('#summernote').summernote({
            placeholder: '请输入文章内容',
            height: "200px",
            callbacks: {
                onImageUpload: function (files, editor, welEditable) {
                    console.log("onImageUpload");
                    sendFile(files, editor, welEditable);
                }
            }
        });
        initModuleView();
    });

    function initModuleView() {
        //获取module
        $.ajax({
            url: "${pageContext.request.contextPath}/module/getModule.action",
            type: "post",
            processData: false,
            contentType: false,
            success: function (data) {
                mdList = data;
                var $postsWhereMd = $("#postsWhereMd");
                var $twousertype = $("#twousertype");
                $.each(mdList, function (index, item) {
                    console.log("mdName.." + item.mdname);
                    //将数据展示出去
                    $("#postsWhereMd").append("<option value=" + item.id + ">" + item.mdname + "</option>");
                    if(index == 0){
                        $.each(item.twoMdList, function (index2, item2) {
                            if (item2 != null) {
                                $twousertype.css("visibility", "visible").html("");
                                $("#twousertype").append("<option value=" + item2.id + ">" + item2.mdname + "</option>");
                                return false;
                            }
                        });
                    }
                });
            },
            error: function (e) {
                alert("错误！！");
            }
        })
    }

    /*在html上运用onclick会报错，所以这样做*/
    $("#submitButtonPublished").click(function () {
        postsFormSubmit('published');
    });

    $("#submitButtonSave").click(function () {
        postsFormSubmit('save');
    });

    function postsFormSubmit(buttonType) {

        var form = new FormData($("#editPostsForm")[0]);
        var code = $('#summernote').summernote('code');
        console.log("code" + code);
        form.append("postscontent", code);
        $
            .ajax({
                url: "${pageContext.request.contextPath}/posts/editPostsSubmit.action?buttonType="
                + buttonType,
                type: "post",
                data: form,
                processData: false,
                contentType: false,
                success: function (data) {
                    /* window.clearInterval(timer); */
                    console.log("over.." + data);
                    $.each(data, function (index, item) {
                        console.log("over.." + data[index]);
                    })
                },
                error: function (e) {
                    alert("错误！！");
                    window.clearInterval(timer);
                }
            });
    }

    function sendFile(files, editor, welEditable) {
        var formData = new FormData();
        for (f in files) {
            formData.append("file", files[f]);
        }
        $.ajax({
            data: formData,
            type: "POST",
            url: "/Blog/upload/uploadImgs.action",
            cache: false,
            contentType: false,
            processData: false,
            success: function (imageUrls) {
                console.log("回掉函数imgUrl:" + imageUrls);
                for (i in imageUrls) {
                    console.log("imgUrl:" + imageUrls[i]);
                    editor.insertImage(welEditable, imageUrls[i]);
                }
            },
            error: function () {
                console.log("uploadError");
            }

        });
    }

    //一级模块变化得到二级模块的处理
    $("#postsWhereMd").change(function () {
        $("#twousertype").css("visibility", "hidden");
        var selectedId = $(this).val();
        console.log("selectedId:" + selectedId);
        $.each(mdList, function (index, item) {
            // console.log("一级模块名称："+item.id);
            console.log("二级模块有吗：" + item.mdname + mdList[index].twoMdList[0]);
            if (selectedId == item.id && mdList[index].twoMdList[0]) {
                $("#twousertype").css("visibility", "visible").html("");
                $.each(item.twoMdList, function (index2, item2) {
                    if (item2.id != null) {
                        $("#twousertype").append("<option value=" + item2.id + ">" + item2.mdname + "</option>");
                    }
                });
                return false;
            }
        });
    });

    window.onbeforeunload = function () {
        return "您的文章尚未保存！";
    }
</script>
</body>
</html>