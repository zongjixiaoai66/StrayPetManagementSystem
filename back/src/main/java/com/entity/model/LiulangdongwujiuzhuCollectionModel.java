package com.entity.model;

import com.entity.LiulangdongwujiuzhuCollectionEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 流浪动物救助收藏
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class LiulangdongwujiuzhuCollectionModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 流浪动物救助
     */
    private Integer liulangdongwujiuzhuId;


    /**
     * 用户
     */
    private Integer yonghuId;


    /**
     * 类型
     */
    private Integer liulangdongwujiuzhuCollectionTypes;


    /**
     * 收藏时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间 show3 photoShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：流浪动物救助
	 */
    public Integer getLiulangdongwujiuzhuId() {
        return liulangdongwujiuzhuId;
    }


    /**
	 * 设置：流浪动物救助
	 */
    public void setLiulangdongwujiuzhuId(Integer liulangdongwujiuzhuId) {
        this.liulangdongwujiuzhuId = liulangdongwujiuzhuId;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：用户
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：类型
	 */
    public Integer getLiulangdongwujiuzhuCollectionTypes() {
        return liulangdongwujiuzhuCollectionTypes;
    }


    /**
	 * 设置：类型
	 */
    public void setLiulangdongwujiuzhuCollectionTypes(Integer liulangdongwujiuzhuCollectionTypes) {
        this.liulangdongwujiuzhuCollectionTypes = liulangdongwujiuzhuCollectionTypes;
    }
    /**
	 * 获取：收藏时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：收藏时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间 show3 photoShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show3 photoShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
