package com.mvc.book.model.biz;

import com.mvc.book.model.dto.MemberDto;

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
	
	//ģ�� �α�
	
	//ģ�� ����
	
	//���� ������
	
	
	//[ å �˻� ���]
	//å �˻�

	//å �˻�_���� ��� �а� ���� å
	
	
	//å �˻�_���� ��� ���� å
	
	
	//[���� ���]
	//���� �а� ���� å ����Ʈ
	
	
	//���� ���� å ����Ʈ
	
	
	//���� Ķ���� API�� ����
	
	
	//�� �Ⱓ ��ǥ�� ���� > ���м�


		public String getMonthTarget(){
		}
		//���� ��踦 ��ȯ�ϴ� �޼��� 
		public String getYearTarget(){
		}
		//�����踦 ��ȯ�ϴ� �޼��� 
		public void setMonthTarget(String monthstats){ 
		}
		//setMonthTarget�� monthstats�� ���� ���޹޾� �����ϴ� ���̱� ������ �Ű����� monthstats�� �ʿ��ϴ�.

		public void setYearTarget(String yearstats){
		}
		//setYearTarget�� yearstats�� ���� ���޹޾� �����ϴ� ���̱� ������ �Ű����� yearstats�� �ʿ��ϴ� 
		
		
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