package board.model.vo;

import java.sql.Date;

public class Board {
	private int boardNo, boardCount;
	private String boardTitle, boardContent, boardWriter, catName;
	private Date boardWriteDate, boardUpdateDate;
	private char boardDeleteYn;
	//
	public Board() {}

	public Board(int boardNo, int boardCount, String boardTitle, String boardContent, String boardWriter,
			String catName, Date boardWriteDate, Date boardUpdateDate, char boardDeleteYn) {
		super();
		this.boardNo = boardNo;
		this.boardCount = boardCount;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardWriter = boardWriter;
		this.catName = catName;
		this.boardWriteDate = boardWriteDate;
		this.boardUpdateDate = boardUpdateDate;
		this.boardDeleteYn = boardDeleteYn;
	}
	/**
	 * 게시물 리스트에 불러올때 쓰는 VO, 상세보기에도 쓸거임
	 * 
	 * @param boardNo
	 * @param boardCount
	 * @param boardTitle
	 * @param boardContent
	 * @param boardWriter
	 * @param catName
	 * @param boardWriteDate
	 * @param boardUpdateDate
	 */
	public Board(int boardNo, int boardCount, String boardTitle, String boardContent, String boardWriter,
			String catName, Date boardWriteDate, Date boardUpdateDate) {
		super();
		this.boardNo = boardNo;
		this.boardCount = boardCount;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardWriter = boardWriter;
		this.catName = catName;
		this.boardWriteDate = boardWriteDate;
		this.boardUpdateDate = boardUpdateDate;
	}
	
	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public Date getBoardWriteDate() {
		return boardWriteDate;
	}

	public void setBoardWriteDate(Date boardWriteDate) {
		this.boardWriteDate = boardWriteDate;
	}

	public Date getBoardUpdateDate() {
		return boardUpdateDate;
	}

	public void setBoardUpdateDate(Date boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}

	public char getBoardDeleteYn() {
		return boardDeleteYn;
	}

	public void setBoardDeleteYn(char boardDeleteYn) {
		this.boardDeleteYn = boardDeleteYn;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardCount=" + boardCount + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardWriter=" + boardWriter + ", catName=" + catName
				+ ", boardWriteDate=" + boardWriteDate + ", boardUpdateDate=" + boardUpdateDate + ", boardDeleteYn="
				+ boardDeleteYn + "]";
	}
	
	
}
