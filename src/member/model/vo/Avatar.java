package member.model.vo;

public class Avatar {
	private String avaId, avaPortrait, avaNickname, avaIntroduction;
	
	public Avatar() {}

	public Avatar(String avaId, String avaPortrait, String avaNickname, String avaIntroduction) {
		super();
		this.avaId = avaId;
		this.avaPortrait = avaPortrait;
		this.avaNickname = avaNickname;
		this.avaIntroduction = avaIntroduction;
	}

	public String getAvaId() {
		return avaId;
	}

	public void setAvaId(String avaId) {
		this.avaId = avaId;
	}

	public String getAvaPortrait() {
		return avaPortrait;
	}

	public void setAvaPortrait(String avaPortrait) {
		this.avaPortrait = avaPortrait;
	}

	public String getAvaNickname() {
		return avaNickname;
	}

	public void setAvaNickname(String avaNickname) {
		this.avaNickname = avaNickname;
	}

	public String getAvaIntroduction() {
		return avaIntroduction;
	}

	public void setAvaIntroduction(String avaIntroduction) {
		this.avaIntroduction = avaIntroduction;
	}

	@Override
	public String toString() {
		return "Avatar [avaId=" + avaId + ", avaPortrait=" + avaPortrait + ", avaNickname=" + avaNickname
				+ ", avaIntroduction=" + avaIntroduction + "]";
	}
	
	
}
