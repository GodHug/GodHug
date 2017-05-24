package cn.nsu.edu.qingshuyuxia.po;

import java.util.Date;

public class Review {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.id
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.articleId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private Integer articleid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.replyId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private Integer replyid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.replyUserName
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private String replyusername;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.commentUserId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private Integer commentuserid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.commentUserName
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private String commentusername;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.reviewContent
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private String reviewcontent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.data
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private Date data;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.system
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private String system;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column review.browser
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    private String browser;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.id
     *
     * @return the value of review.id
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.id
     *
     * @param id the value for review.id
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.articleId
     *
     * @return the value of review.articleId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public Integer getArticleid() {
        return articleid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.articleId
     *
     * @param articleid the value for review.articleId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setArticleid(Integer articleid) {
        this.articleid = articleid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.replyId
     *
     * @return the value of review.replyId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public Integer getReplyid() {
        return replyid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.replyId
     *
     * @param replyid the value for review.replyId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setReplyid(Integer replyid) {
        this.replyid = replyid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.replyUserName
     *
     * @return the value of review.replyUserName
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public String getReplyusername() {
        return replyusername;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.replyUserName
     *
     * @param replyusername the value for review.replyUserName
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setReplyusername(String replyusername) {
        this.replyusername = replyusername == null ? null : replyusername.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.commentUserId
     *
     * @return the value of review.commentUserId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public Integer getCommentuserid() {
        return commentuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.commentUserId
     *
     * @param commentuserid the value for review.commentUserId
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setCommentuserid(Integer commentuserid) {
        this.commentuserid = commentuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.commentUserName
     *
     * @return the value of review.commentUserName
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public String getCommentusername() {
        return commentusername;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.commentUserName
     *
     * @param commentusername the value for review.commentUserName
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setCommentusername(String commentusername) {
        this.commentusername = commentusername == null ? null : commentusername.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.reviewContent
     *
     * @return the value of review.reviewContent
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public String getReviewcontent() {
        return reviewcontent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.reviewContent
     *
     * @param reviewcontent the value for review.reviewContent
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setReviewcontent(String reviewcontent) {
        this.reviewcontent = reviewcontent == null ? null : reviewcontent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.data
     *
     * @return the value of review.data
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public Date getData() {
        return data;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.data
     *
     * @param data the value for review.data
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setData(Date data) {
        this.data = data;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.system
     *
     * @return the value of review.system
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public String getSystem() {
        return system;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.system
     *
     * @param system the value for review.system
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setSystem(String system) {
        this.system = system == null ? null : system.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column review.browser
     *
     * @return the value of review.browser
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public String getBrowser() {
        return browser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column review.browser
     *
     * @param browser the value for review.browser
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    public void setBrowser(String browser) {
        this.browser = browser == null ? null : browser.trim();
    }
}