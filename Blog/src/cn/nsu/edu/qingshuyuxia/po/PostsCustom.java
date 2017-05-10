package cn.nsu.edu.qingshuyuxia.po;
import java.util.Date;

public class PostsCustom extends Posts{

	public PostsCustom(){

	}
	//传入日期
	public PostsCustom(Date date){
		this.setPostscreatetime(date);
	}
	//传入评论量
	public PostsCustom(Integer reviewNumber){
		this.setReviewnumber(reviewNumber);
	}

	//模块名称
	private String mdName;

	public String getMdName() {
		return mdName;
	}

	public void setMdName(String mdName) {
		this.mdName = mdName;
	}

}
