package cn.nsu.edu.qingshuyuxia.mapper;

import cn.nsu.edu.qingshuyuxia.po.Review;
import cn.nsu.edu.qingshuyuxia.po.ReviewExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReviewMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int countByExample(ReviewExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int deleteByExample(ReviewExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int insert(Review record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int insertSelective(Review record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    List<Review> selectByExample(ReviewExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    Review selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int updateByExampleSelective(@Param("record") Review record, @Param("example") ReviewExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int updateByExample(@Param("record") Review record, @Param("example") ReviewExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int updateByPrimaryKeySelective(Review record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table review
     *
     * @mbggenerated Wed Feb 15 06:18:15 CST 2017
     */
    int updateByPrimaryKey(Review record);
}