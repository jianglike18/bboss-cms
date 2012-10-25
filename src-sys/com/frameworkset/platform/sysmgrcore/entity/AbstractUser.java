/*
 * WARNING: DO NOT EDIT THIS FILE. This is a generated file that is synchronized
 * by MyEclipse Hibernate tool integration.
 *
 * Created Tue Feb 14 11:47:28 CST 2006 by MyEclipse Hibernate Tool.
 */
package com.frameworkset.platform.sysmgrcore.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.Set;

import org.apache.struts.action.ActionForm;

/**
 * A class that represents a row in the td_sm_user table. You can customize the
 * behavior of this class by editing the class, {@link User()}. WARNING: DO NOT
 * EDIT THIS FILE. This is a generated file that is synchronized * by MyEclipse
 * Hibernate tool integration.
 */
public abstract class AbstractUser implements Serializable {
	/**
	 * The cached hash code value for this instance. Settting to 0 triggers
	 * re-calculation.
	 */
	private int hashValue = 0;

	/** The composite primary key value. */
	private Integer userId;

	/** The value of the simple userSn property. */
	private Integer userSn;

	/** The value of the simple userName property. */
	private String userName;

	/** The value of the simple userPassword property. */
	private String userPassword;

	/** The value of the simple userRealname property. */
	private String userRealname;

	/**
	 * 工号
	 */
	private String userWorknumber;

	/**
	 * 拼音
	 */
	private String userPinyin;

	/**
	 * 用户性别
	 */
	private String userSex;

	/**
	 * 家庭电话
	 */
	private String userHometel;

	/**
	 * 工作电话
	 */
	private String userWorktel;

	/**
	 * 移动电话1
	 */
	private String userMobiletel1;

	/**
	 * 移动电话2
	 */
	private String userMobiletel2;

	/**
	 * 传真
	 */
	private String userFax;

	/**
	 * OICQ
	 */
	private String userOicq;

	/**
	 * 生日
	 */
	private Date userBirthday;

	/**
	 * Email
	 */
	private String userEmail;

	/**
	 * 用户地址
	 */
	private String userAddress;

	/**
	 * 邮政编码
	 */
	private String userPostalcode;

	/**
	 * 身份证号
	 */
	private String userIdcard;

	/**
	 * 是否有效，有效为1否则为0
	 */
	private Integer userIsvalid;

	/**
	 * 注册日期
	 */
	private Date userRegdate;
	
	/**
	 * 注册日期
	 */
	private String user_Regdate;

	/**
	 * 登录次数
	 */
	private Integer userLogincount;

	/**
	 * 用户类型
	 */
	private String userType;

	/**
	 * 备用1
	 */
	private String remark1;

	/**
	 * 备用2 手机短号码字段
	 */
	private String remark2;

	/**
	 * 备用3
	 */
	private String remark3;

	/**
	 * 备用4
	 */
	private String remark4;

	/**
	 * 备用5
	 */
	private String remark5;
	
	private Date pastTime;
	
	/**
	 * 会员过期时间
	 */
	private String past_Time;
	
	/**
	 * 会员开通时间
	 */
	private String dredgeTime;
	
	/**
	 * 是否过期
	 */
	private String isPast;
	/**
	 * 密码取回问题
	 */
	private String question;
	
	/**
	 * 密码取回答案
	 */
	private String answer;
	
	/**
	 * 会员类型 1:企业   2:个人
	 */
	private String memberType;
	/**
	 * 企业名称
	 */
	private String  enterpriseName;
	/**
	 * 企业介绍
	 */
	private String  enterpriseIntro;
	/**
	 * 企业联系人
	 */
	private String enterpriseLinkman;
	/**
	 * 是否公开联系方式和资料
	 */
	private String enableopen;
	/**
	 * 服务类别
	 */
	private String serviceType;
	
	/**
	 * 会员角色
	 */
	private String memberRole;
	
	/**
	 * 服务资源
	 */
	private String res;
	/**
	 * 注册用户/收费用户
	 */
    private String ispay;        
    /**
     * 单位网址
     */
    private String network_address;    
    /**
     * 会员状态0:已停用，1：新申请，2：已开通
     */
    private String status;   
    
    /**
     * 备注
     */
    private String user_desc;    
    /**
     * 申请服务说明
     */
    private String serverexplain;
	/**
	 * 用户最后登陆日期（物价局业务系统）
	 */
	private Date lastlogindate;
	/**
	 * 用户、岗位、机构实体集合
	 */
	private Set userjoborgSet = null;

	/**
	 * 用户属性集合
	 */
	private Set userattrSet = null;

	/**
	 * 用户资源操作集合
	 */
	private Set userresopSet = null;

	/**
	 * 委托授权用户集合
	 */
	private Set accreditSet = null;

	/**
	 * 用户组集合
	 */
	private Set usergroupSet = null;

	/**
	 * 临时授权
	 */
	private Set tempaccreditSet = null;

	/**
	 * 用户和角色实体
	 */
	private Set userroleSet = null;
	

	/**
	 * 工龄
	 */
	private String worklength;
	
	/**
	 * 政治面貌
	 */
	private String politics;
	
	/**
	 * 用户的岗位列表，该属性并未与数据库进行映射。它的对象实例要用程序来赋予
	 */
	private List jobList = null;
	
	/**
     * 标识机构是否是税管员
     * 0-不是 缺省值为0
     * 1-是
     * 
     * ADDED BY BIAOPING.YIN 2007.11.15
     */
    private int istaxmanager = 0;
    /**
     * 用户登录类型
     * 0-平台验证
     * 1-ldap验证
     */
    private int logintype = 0;

	// TODO 注意，增加新的字段属性时，请手工在 db.UserManagerImpl.getUserList(Organization org)
	// 中增加相应的项

	/**
	 * @return 返回 userroleSet。
	 */
	public Set getUserroleSet() {
		return userroleSet;
	}

	/**
	 * @param userroleSet
	 *            要设置的 userroleSet。
	 */
	public void setUserroleSet(Set userroleSet) {
		this.userroleSet = userroleSet;
	}

	/**
	 * @return 返回 tempaccreditSet。
	 */
	public Set getTempaccreditSet() {
		return tempaccreditSet;
	}

	/**
	 * @param tempaccreditSet
	 *            要设置的 tempaccreditSet。
	 */
	public void setTempaccreditSet(Set tempaccreditSet) {
		this.tempaccreditSet = tempaccreditSet;
	}

	/**
	 * @return 返回 usergroupSet。
	 */
	public Set getUsergroupSet() {
		return usergroupSet;
	}

	/**
	 * @param usergroupSet
	 *            要设置的 usergroupSet。
	 */
	public void setUsergroupSet(Set usergroupSet) {
		this.usergroupSet = usergroupSet;
	}

	/**
	 * @return 返回 accreditSet。
	 */
	public Set getAccreditSet() {
		return accreditSet;
	}

	/**
	 * @param accreditSet
	 *            要设置的 accreditSet。
	 */
	public void setAccreditSet(Set accreditSet) {
		this.accreditSet = accreditSet;
	}

	/**
	 * @return 返回 userresopSet。
	 */
	public Set getUserresopSet() {
		return userresopSet;
	}

	/**
	 * @param userresopSet
	 *            要设置的 userresopSet。
	 */
	public void setUserresopSet(Set userresopSet) {
		this.userresopSet = userresopSet;
	}

	/**
	 * @return 返回 userattrSet。
	 */
	public Set getUserattrSet() {
		return userattrSet;
	}

	/**
	 * @param userattrSet
	 *            要设置的 userattrSet。
	 */
	public void setUserattrSet(Set userattrSet) {
		this.userattrSet = userattrSet;
	}

	/**
	 * Simple constructor of AbstractUser instances.
	 */
	public AbstractUser() {
	}

	/**
	 * Constructor of AbstractUser instances given a simple primary key.
	 * 
	 * @param userId
	 */
	public AbstractUser(Integer userId) {
		this.setUserId(userId);
	}

	/**
	 * Return the simple primary key value that identifies this object.
	 * 
	 * @return String
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * Set the simple primary key value that identifies this object.
	 * 
	 * @param userId
	 */
	public void setUserId(Integer userId) {
		this.hashValue = 0;
		this.userId = userId;
	}

	/**
	 * Return the value of the USER_SN column.
	 * 
	 * @return Integer
	 */
	public Integer getUserSn() {
		return this.userSn;
	}

	/**
	 * Set the value of the USER_SN column.
	 * 
	 * @param userSn
	 */
	public void setUserSn(Integer userSn) {
		this.userSn = userSn;
	}

	/**
	 * Return the value of the USER_NAME column.
	 * 
	 * @return String
	 */
	public String getUserName() {
		return this.userName;
	}

	/**
	 * Set the value of the USER_NAME column.
	 * 
	 * @param userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * Return the value of the USER_PASSWORD column.
	 * 
	 * @return String
	 */
	public String getUserPassword() {
		return this.userPassword;
	}

	/**
	 * Set the value of the USER_PASSWORD column.
	 * 
	 * @param userPassword
	 */
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	/**
	 * Return the value of the USER_REALNAME column.
	 * 
	 * @return String
	 */
	public String getUserRealname() {
		return this.userRealname;
	}

	/**
	 * Set the value of the USER_REALNAME column.
	 * 
	 * @param userRealname
	 */
	public void setUserRealname(String userRealname) {
		this.userRealname = userRealname;
	}

	/**
	 * Implementation of the equals comparison on the basis of equality of the
	 * primary key values.
	 * 
	 * @param rhs
	 * @return boolean
	 */
	public boolean equals(Object rhs) {
		if (rhs == null)
			return false;
		if (!(rhs instanceof User))
			return false;
		User that = (User) rhs;
		if (this.getUserId() != null && that.getUserId() != null) {
			if (!this.getUserId().equals(that.getUserId())) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Implementation of the hashCode method conforming to the Bloch pattern
	 * with the exception of array properties (these are very unlikely primary
	 * key types).
	 * 
	 * @return int
	 */
	public int hashCode() {
		if (this.hashValue == 0) {
			int result = 17;
			int userIdValue = this.getUserId() == null ? 0 : this.getUserId()
					.hashCode();
			result = result * 37 + userIdValue;
			this.hashValue = result;
		}
		return this.hashValue;
	}

	/**
	 * @return 返回 userjoborgSet。
	 */
	public Set getUserjoborgSet() {
		return userjoborgSet;
	}

	/**
	 * @param userjoborgSet
	 *            要设置的 userjoborgSet。
	 */
	public void setUserjoborgSet(Set userjoborgSet) {
		this.userjoborgSet = userjoborgSet;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Date getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserFax() {
		return userFax;
	}

	public void setUserFax(String userFax) {
		this.userFax = userFax;
	}

	public String getUserHometel() {
		return userHometel;
	}

	public void setUserHometel(String userHometel) {
		this.userHometel = userHometel;
	}

	public String getUserIdcard() {
		return userIdcard;
	}

	public void setUserIdcard(String userIdcard) {
		this.userIdcard = userIdcard;
	}

	public Integer getUserIsvalid() {
		return userIsvalid;
	}

	public void setUserIsvalid(Integer userIsvalid) {
		this.userIsvalid = userIsvalid;
	}

	public Integer getUserLogincount() {
		return userLogincount;
	}

	public void setUserLogincount(Integer userLogincount) {
		this.userLogincount = userLogincount;
	}

	public String getUserMobiletel1() {
		return userMobiletel1;
	}

	public void setUserMobiletel1(String userMobiletel1) {
		this.userMobiletel1 = userMobiletel1;
	}

	public String getUserMobiletel2() {
		return userMobiletel2;
	}

	public void setUserMobiletel2(String userMobiletel2) {
		this.userMobiletel2 = userMobiletel2;
	}

	public String getUserOicq() {
		return userOicq;
	}

	public void setUserOicq(String userOicq) {
		this.userOicq = userOicq;
	}

	public String getUserPinyin() {
		return userPinyin;
	}

	public void setUserPinyin(String userPinyin) {
		this.userPinyin = userPinyin;
	}

	public String getUserPostalcode() {
		return userPostalcode;
	}

	public void setUserPostalcode(String userPostalcode) {
		this.userPostalcode = userPostalcode;
	}

	public Date getUserRegdate() {
		return userRegdate;
	}

	public void setUserRegdate(Date userRegdate) {
		this.userRegdate = userRegdate;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserWorknumber() {
		return userWorknumber;
	}

	public void setUserWorknumber(String userWorknumber) {
		this.userWorknumber = userWorknumber;
	}

	public String getUserWorktel() {
		return userWorktel;
	}

	public void setUserWorktel(String userWorktel) {
		this.userWorktel = userWorktel;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getRemark1() {
		return remark1;
	}

	public void setRemark1(String remark1) {
		this.remark1 = remark1;
	}

	public String getRemark2() {
		return remark2;
	}

	public void setRemark2(String remark2) {
		this.remark2 = remark2;
	}

	public String getRemark3() {
		return remark3;
	}

	public void setRemark3(String remark3) {
		this.remark3 = remark3;
	}

	public String getRemark4() {
		return remark4;
	}

	public void setRemark4(String remark4) {
		this.remark4 = remark4;
	}

	public String getRemark5() {
		return remark5;
	}

	public void setRemark5(String remark5) {
		this.remark5 = remark5;
	}

	public List getJobList() {
		return jobList;
	}

	public void setJobList(List jobList) {
		this.jobList = jobList;
	}

	public Date getPastTime() {
		return pastTime;
	}

	public void setPastTime(Date pastTime) {
		this.pastTime = pastTime;
	}

	public String getPast_Time() {
		return past_Time;
	}

	public void setPast_Time(String past_Time) {
		this.past_Time = past_Time;
	}

	public String getIsPast() {
		return isPast;
	}

	public void setIsPast(String isPast) {
		this.isPast = isPast;
	}

	public String getEnableopen() {
		return enableopen;
	}

	public void setEnableopen(String enableopen) {
		this.enableopen = enableopen;
	}

	public String getEnterpriseIntro() {
		return enterpriseIntro;
	}

	public void setEnterpriseIntro(String enterpriseIntro) {
		this.enterpriseIntro = enterpriseIntro;
	}

	public String getEnterpriseLinkman() {
		return enterpriseLinkman;
	}

	public void setEnterpriseLinkman(String enterpriseLinkman) {
		this.enterpriseLinkman = enterpriseLinkman;
	}

	

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getMemberRole() {
		return memberRole;
	}

	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}

	public String getRes() {
		return res;
	}

	public void setRes(String res) {
		this.res = res;
	}

	public String getUser_Regdate() {
		return user_Regdate;
	}

	public void setUser_Regdate(String user_Regdate) {
		this.user_Regdate = user_Regdate;
	}

	public String getDredgeTime() {
		return dredgeTime;
	}

	public void setDredgeTime(String dredgeTime) {
		this.dredgeTime = dredgeTime;
	}

	public String getIspay() {
		return ispay;
	}

	public void setIspay(String ispay) {
		this.ispay = ispay;
	}

	public String getNetwork_address() {
		return network_address;
	}

	public void setNetwork_address(String network_address) {
		this.network_address = network_address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUser_desc() {
		return user_desc;
	}

	public void setUser_desc(String user_desc) {
		this.user_desc = user_desc;
	}

	public String getServerexplain() {
		return serverexplain;
	}

	public void setServerexplain(String serverexplain) {
		this.serverexplain = serverexplain;
	}

	public Date getLastlogindate() {
		return lastlogindate;
	}

	public void setLastlogindate(Date lastlogindate) {
		this.lastlogindate = lastlogindate;
	}

	public String getEnterpriseName() {
		return enterpriseName;
	}

	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}



	public String getWorklength() {
		return worklength;
	}

	public void setWorklength(String worklength) {
		this.worklength = worklength;
	}

	public String getPolitics() {
		return politics;
	}

	public void setPolitics(String politics) {
		this.politics = politics;
	}
	
	public int getIstaxmanager() {
		return istaxmanager;
	}

	public void setIstaxmanager(int istaxmanager) {
		this.istaxmanager = istaxmanager;
	}
}