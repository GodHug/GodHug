package cn.nsu.edu.qingshuyuxia.po;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

public class Posts {

	private Integer id;

	//message是提示校验出错信息
	@Size(min = 1,max = 20,message = "{posts.postsname.length.error}")
	private String postsname;

	private String postspic;

	private Integer postsauthorid;

	private Integer wheremd;

	private Integer mdlevel;

	private String postsmdname;

	private String postscontent;

	//非空校验
    @NotNull(message = "{posts.postscreatetime.isNull}")
	private Date postscreatetime;
	
	private Boolean postsIsPublished;

	private Integer readnumber;

	private Integer reviewnumber;

	private Integer colletnumber;

    private Integer fowardnumber;

	public void setReadnumber(Integer readnumber) {
		this.readnumber = readnumber;
	}

	public void setReviewnumber(Integer reviewnumber) {
		this.reviewnumber = reviewnumber;
	}

	public void setColletnumber(Integer colletnumber) {
		this.colletnumber = colletnumber;
	}

	public void setFowardnumber(Integer fowardnumber) {
		this.fowardnumber = fowardnumber;
	}

	public Integer getReadnumber() {

		return readnumber;
	}

	public Integer getReviewnumber() {
		return reviewnumber;
	}

	public Integer getColletnumber() {
		return colletnumber;
	}

	public Integer getFowardnumber() {
		return fowardnumber;
	}

    public Boolean getPostsIsPublished() {
		return postsIsPublished;
	}

	public void setPostsIsPublished(Boolean postsIsPublished) {
		this.postsIsPublished = postsIsPublished;
	}

	public Date getPostscreatetime() {
		return postscreatetime;
	}

	public void setPostscreatetime(Date postscreatetime) {
		this.postscreatetime = postscreatetime;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPostsname() {
		return postsname;
	}

	public void setPostsname(String postsname) {
		this.postsname = postsname == null ? null : postsname.trim();
	}

	public String getPostspic() {
		return postspic;
	}

	public void setPostspic(String postspic) {
		this.postspic = postspic == null ? null : postspic.trim();
	}

	public Integer getPostsauthorid() {
		return postsauthorid;
	}

	public void setPostsauthorid(Integer postsauthorid) {
		this.postsauthorid = postsauthorid;
	}

	public Integer getWheremd() {
		return wheremd;
	}

	public void setWheremd(Integer wheremd) {
		this.wheremd = wheremd;
	}

	public String getPostscontent() {
		return postscontent;
	}

	public void setPostscontent(String postscontent) {
		this.postscontent = postscontent;
	}

	public Integer getMdlevel() {
		return mdlevel;
	}

	public void setMdlevel(Integer mdlevel) {
		this.mdlevel = mdlevel;
	}

    public String getPostsmdname() {
        return postsmdname;
    }

    public void setPostsmdname(String postsmdname) {
        this.postsmdname = postsmdname;
    }

	@Override
	public String toString() {
		return "Posts{" +
				"id=" + id +
				", postsname='" + postsname + '\'' +
				", postspic='" + postspic + '\'' +
				", postsauthorid=" + postsauthorid +
				", wheremd=" + wheremd +
				", mdlevel=" + mdlevel +
				", postscontent='" + postscontent + '\'' +
				", postscreatetime=" + postscreatetime +
				", postsIsPublished=" + postsIsPublished +
				'}';
	}
}