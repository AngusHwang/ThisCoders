package member.model.vo;

import java.sql.Date;

public class Member {
	private String userId, userPwd, userNickname, userName, userBirthday, userEmail, userAddr, userPhone, userAddCerti, userAddCarrer, userAddAward, userAddAvailLang;
	private Date enrollDate, updateDate;
	private char status, adminYn;
	
	
	public Member() {}
	
	/**
	 * 모든게 다있는 생성자임
	 * @param userId
	 * @param userPwd
	 * @param userNickname
	 * @param userName
	 * @param userBirthday
	 * @param userEmail
	 * @param userAddr
	 * @param userPhone
	 * @param userAddCerti
	 * @param userAddCarrer
	 * @param userAddAward
	 * @param userAddAvailLang
	 * @param enrollDate
	 * @param updateDate
	 * @param status
	 * @param adminYn
	 */
	public Member(String userId, String userPwd, String userNickname, String userName, String userBirthday,
			String userEmail, String userAddr, String userPhone, String userAddCerti, String userAddCarrer,
			String userAddAward, String userAddAvailLang, Date enrollDate, Date updateDate, char status, char adminYn) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userName = userName;
		this.userBirthday = userBirthday;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.userAddCerti = userAddCerti;
		this.userAddCarrer = userAddCarrer;
		this.userAddAward = userAddAward;
		this.userAddAvailLang = userAddAvailLang;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.status = status;
		this.adminYn = adminYn;
	}
	
	/**
	 * 하나 빼먹어서 냅둠, userName이 없음
	 * @param userId
	 * @param userPwd
	 * @param userNickname
	 * @param userBirthday
	 * @param userEmail
	 * @param userAddr
	 * @param userPhone
	 * @param userAddCerti
	 * @param userAddCarrer
	 * @param userAddAward
	 * @param userAddAvailLang
	 * @param enrollDate
	 * @param updateDate
	 * @param status
	 * @param adminYn
	 */
	public Member(String userId, String userPwd, String userNickname, String userBirthday, String userEmail,
			String userAddr, String userPhone, String userAddCerti, String userAddCarrer, String userAddAward,
			String userAddAvailLang, Date enrollDate, Date updateDate, char status, char adminYn) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userBirthday = userBirthday;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.userAddCerti = userAddCerti;
		this.userAddCarrer = userAddCarrer;
		this.userAddAward = userAddAward;
		this.userAddAvailLang = userAddAvailLang;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.status = status;
		this.adminYn = adminYn;
	}

	
	/**
	 * 회원가입 할 때 쓰는 생성자입니다.
	 */
	public Member(String userId, String userPwd, String userNickname, String userName, String userBirthday, String userEmail,
			String userAddr, String userPhone, String userAddCerti, String userAddCarrer, String userAddAward,
			String userAddAvailLang) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userName = userName;
		this.userBirthday = userBirthday;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.userAddCerti = userAddCerti;
		this.userAddCarrer = userAddCarrer;
		this.userAddAward = userAddAward;
		this.userAddAvailLang = userAddAvailLang;
	}
	
	
	/**
	 * 로그인에 필요한 생성자입니다.
	 * @param userId
	 * @param userPwd
	 * @param userNickname
	 * @param userName
	 * @param userBirthday
	 * @param userEmail
	 * @param userAddr
	 * @param userPhone
	 * @param enrollDate
	 * @param updateDate
	 * @param adminYn
	 */
	public Member(String userId, String userPwd, String userNickname, String userName, String userBirthday,
			String userEmail, String userAddr, String userPhone, Date enrollDate, Date updateDate, char adminYn) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userName = userName;
		this.userBirthday = userBirthday;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.adminYn = adminYn;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddCerti() {
		return userAddCerti;
	}
	public void setUserAddCerti(String userAddCerti) {
		this.userAddCerti = userAddCerti;
	}
	public String getUserAddCarrer() {
		return userAddCarrer;
	}
	public void setUserAddCarrer(String userAddCarrer) {
		this.userAddCarrer = userAddCarrer;
	}
	public String getUserAddAward() {
		return userAddAward;
	}
	public void setUserAddAward(String userAddAward) {
		this.userAddAward = userAddAward;
	}
	public String getUserAddAvailLang() {
		return userAddAvailLang;
	}
	public void setUserAddAvailLang(String userAddAvailLang) {
		this.userAddAvailLang = userAddAvailLang;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public char getStatus() {
		return status;
	}
	public void setStatus(char status) {
		this.status = status;
	}
	public char getAdminYn() {
		return adminYn;
	}
	public void setAdminYn(char adminYn) {
		this.adminYn = adminYn;
	}
	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userNickname=" + userNickname
				+ ", userBirthday=" + userBirthday + ", userEmail=" + userEmail + ", userAddr=" + userAddr
				+ ", userPhone=" + userPhone + ", userAddCerti=" + userAddCerti + ", userAddCarrer=" + userAddCarrer
				+ ", userAddAward=" + userAddAward + ", userAddAvailLang=" + userAddAvailLang + ", enrollDate="
				+ enrollDate + ", updateDate=" + updateDate + ", status=" + status + ", adminYn=" + adminYn + "]";
	}
}
