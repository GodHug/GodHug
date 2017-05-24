package cn.nsu.edu.qingshuyuxia.po;

public class PostsCustomVo {

	// 自定义的posts扩展类
	private PostsCustom postsCustom;
	
	// 帖子所属模块
	private String postsWhereMd;
	
	// get set方法一定要

	public PostsCustom getPostsCustom() {
		return postsCustom;
	}

	public void setPostsCustom(PostsCustom postsCustom) {
		this.postsCustom = postsCustom;
	}

	public String getPostsWhereMd() {
		return postsWhereMd;
	}

	public void setPostsWhereMd(String postsWhereMd) {
		this.postsWhereMd = postsWhereMd;
	}

}
