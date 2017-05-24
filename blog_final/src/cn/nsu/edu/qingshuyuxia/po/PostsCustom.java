package cn.nsu.edu.qingshuyuxia.po;
import java.util.Date;
import java.util.List;

public class PostsCustom extends Posts{

	//模块名称
	private String mdName;
	//查询的条数
	private Integer selectnum;
	//posts对应的Label
	private List<Label> labelList;

    //无参
    public PostsCustom(){}
    //传入日期
    public PostsCustom(Date date){
        this.setPostscreatetime(date);
    }
    //传入评论量
    public PostsCustom(Integer reviewNumber){
        this.setReviewnumber(reviewNumber);
    }

    public List<Label> getLabelList() {
        return labelList;
    }

    public void setLabelList(List<Label> labelList) {
        this.labelList = labelList;
    }

    public String getMdName() {
		return mdName;
	}

	public void setMdName(String mdName) {
		this.mdName = mdName;
	}

	public Integer getSelectnum() {
		return selectnum;
	}

	public void setSelectnum(Integer selectnum) {
		this.selectnum = selectnum;
	}
}
