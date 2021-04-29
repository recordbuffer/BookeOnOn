package com.mvc.book.model.biz;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mvc.book.model.dao.BookeDao;
import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.MsgDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Service
public class BookeBizImpl implements BookeBiz{

	@Autowired
	private BookeDao dao;
	
	@Override
	public MemberDto login(MemberDto dto) {
		return null;
	}

	@Override
	public void memberJoinMethod(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberDto> searchMember(String bd_id, String bd_nn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FriendDto> selectFList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertFriend(FriendDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFriend(int flist_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMsg(MsgDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MsgDto> selectMsgList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MsgDto selectMsg(int msg_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMsg(int msg_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<R_bookDto> selectRList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Idcheck(String be_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String get_searchId(String be_name, String be_email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void mailSendWithPW(String be_id, String be_email, HttpServletRequest reqeust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String updateGET(HttpSession session, Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(String be_id, String be_pw) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BookDto> bserch(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int bookWanna(W_bookDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int bookRead(R_bookDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BookDto> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_liter(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_novel(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_comic(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_textbook(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> selectBestList(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_liter(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_novel(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_comic(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_textbook(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> selectNewList(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_liter(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_novel(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_comic(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_textbook(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int starRate(BookDto dto, int rate) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<W_bookDto> W_bookSelectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int W_bookDel(W_bookDto no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<R_bookDto> R_bookSelectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int R_bookDelete(R_bookDto no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Date R_bookUpdate(R_bookDto date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int Y_amount(int yearStats, int yearTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int M_amount(int monthStats, int monthTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteStats(int monthTarget, int yearTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStats(int monthTarget, int yearTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int makeCommunityRoom(BkDto no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BkDto> communityListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BkDto community(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String communityDel(BkDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void groupChat() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void groupCharMember(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String insertChat() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String loginCheck(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String level(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String forced_Admin(String be_id, String be_pw) {
		// TODO Auto-generated method stub
		return null;
	}

}
