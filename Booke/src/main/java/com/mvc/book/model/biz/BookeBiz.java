package com.mvc.book.model.biz;

import java.util.List;

import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.LibraryDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.MsgDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.StoreDto;

public interface BookeBiz {
	
	//[ ȸ����� ]
	//ȸ������
	public void memberJoinMethod(MemberDto dto);
	
	//ȸ������_���̵��ߺ�üũ
	
	
	//�α���
	public MemberDto login(MemberDto dto);
	
	//�α��� ���̵� ã��
	
	
	//�α��� ��й�ȣ ã��
	
	//ȸ�� ���� ����
	
	//ȸ�� Ż��
	
	
	//[ ȸ�� ģ�� ��� ]
	//ģ���˻�
	public List<MemberDto> searchMember(String bd_id, String bd_nn);

	//ģ�� ��� ��ȸ
	public List<FriendDto> selectFList(); 
	
	//ģ�� �α�
	public int insertFriend(FriendDto dto);
	
	//ģ�� ����
	public int deleteFriend(int flist_no);
	
	
	//[ ���� ��� ]
	//���� ������
	public int insertMsg(MsgDto	dto);
	
	//���� ��� ��ȸ
	public List<MsgDto> selectMsgList();
	
	//���� �ϳ� �� ��ȸ
	public MsgDto selectMsg(int msg_no);
	
	//���� ����
	public int deleteMsg(int msg_no);
	
	//[ å �˻� ���]
	//å �˻�

	//å �˻�_���� ��� �а� ���� å
	
	
	//å �˻�_���� ��� ���� å
	
	//[ å �Ұ� ���]
	//��ü : ��ü - ���� ��ü ����
	public List<BookDto> selectAllList();
	//��ü : ���� - ���� ��ü ���� �� ���� ī�װ�
	public List<BookDto> allList_liter(BookDto dto, int num);
	//��ü : �Ҽ� - ���� ��ü ���� �� �Ҽ� ī�װ�
	public List<BookDto> allList_novel(BookDto dto, int num);
	//��ü : ��ȭ - ���� ��ü ���� �� ��ȭ ī�װ�
	public List<BookDto> allList_comic(BookDto dto, int num);
	//��ü : ���� - ���� ��ü ���� �� ���� ī�װ�
	public List<BookDto> allList_textbook(BookDto dto, int num);
	//����Ʈ���� : ��ü - ����Ʈ���� ����
	public List<BookDto> selectBestList(BookDto dto);
	//����Ʈ���� : ���� - ����Ʈ���� ���� �� ���� ī�װ�
	public List<BookDto> bestList_liter(BookDto dto, int num);
	//����Ʈ���� : �Ҽ� - ����Ʈ���� ���� �� �Ҽ� ī�װ�
	public List<BookDto> bestList_novel(BookDto dto, int num);
	//����Ʈ���� : ��ȭ - ����Ʈ���� ���� �� ��ȭ ī�װ�
	public List<BookDto> bestList_comic(BookDto dto, int num);
	//����Ʈ���� : ���� = ����Ʈ���� ���� �� ���� ī�װ�
	public List<BookDto> bestList_textbook(BookDto dto, int num);
	//�Ű� : ��ü - �Ű� ����
	public List<BookDto> selectNewList(BookDto dto);
	//�Ű� : ���� - �Ű� ���� �� ���� ī�װ�
	public List<BookDto> newList_liter(BookDto dto, int num);
	//�Ű� : �Ҽ� - �Ű� ���� �� �Ҽ� ī�װ�
	public List<BookDto> newList_novel(BookDto dto, int num);
	//�Ű� : ��ȭ - �Ű� ���� �� ��ȭ ī�װ�
	public List<BookDto> newList_comic(BookDto dto, int num);
	//�Ű� : ���� - �Ű� ���� �� ���� ī�װ�
	public List<BookDto> newList_textbook(BookDto dto, int num);
	//���� ����
	public int starRate(BookDto dto, int rate);
	//����api�� ���� ��ġ ���
	public List<StoreDto> storeMapping(StoreDto dto);
	//����api�� ������ ��ġ ���
	public List<LibraryDto> libraryMapping(LibraryDto dto);
	//[ ���� ��� ]
	//���� �а� ���� å ����Ʈ ��ȸ
	
	//���� �а� ���� å ����
	
	//���� ���� å ����Ʈ ��ȸ
	
	//���� ���� å ����
	
	//���� ���� å ��¥ ����
	
	
	//[ ���� ���_Ķ����]
	//Ķ���� API���� ���� å ����Ʈ ��ȸ
	public List<R_bookDto> selectRList();
	
	
	
	//[ ���� ���_��� ]
	//�� �Ⱓ ��ǥ�� ���� > ���м�
	
	//��ǥ�� ���� 
	
	//��ǥ�� ����
	
	
	
	//[Ŀ�´�Ƽ �Ҹ���]
	//�Ҹ��� ����
	
	//�Ҹ��� ����Ʈ + ���� ����
	
	//�Ҹ��� �����
	
	
	
	
	
	//������ ���
	// ȸ�� ���� ��ȸ
	
	
	// ȸ�� ��� ���� 
	
	
	//ȸ�� ���� Ż��
	
	
}