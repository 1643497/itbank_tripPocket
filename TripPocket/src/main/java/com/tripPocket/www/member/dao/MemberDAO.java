package com.tripPocket.www.member.dao;

import java.util.List;

import com.tripPocket.www.member.dto.MemberDTO;

public interface MemberDAO {

	void insertMember(MemberDTO memberDTO);

	boolean isMemberIdDuplicated(String memberId);
	
	MemberDTO memberLoginCheck(MemberDTO memberDTO);

	void modMember(MemberDTO memberDTO);

	MemberDTO update(MemberDTO memberDTO);

	void deleteTripShareContentByMemberId(String memberId);

	void deleteTripShareByMemberId(String memberId);

	void deleteTripDayByMemberId(String memberId);

	void deleteTripPlanByMemberId(String memberId);

	void delMemberById(String memberId);

	int findMemberNameAndEmail(MemberDTO memberDTO);

	List<MemberDTO> selectIdListByEmailAndName(MemberDTO memberDTO);

	int findMemberIdAndEmail(MemberDTO memberDTO);

	String selectMemberId(MemberDTO memberDTO);

	int updateMemberPwd(MemberDTO memberDTO);

	MemberDTO selectMember(String memberId);
	
	void updateProfileImage(String memberId, String memberProfileImage);

}
