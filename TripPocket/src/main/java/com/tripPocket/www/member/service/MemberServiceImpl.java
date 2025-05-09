package com.tripPocket.www.member.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripPocket.www.member.dao.MemberDAO;
import com.tripPocket.www.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public void insertMember(MemberDTO memberDTO) {
		memberDAO.insertMember(memberDTO);
	}
	
	@Override
	public MemberDTO memberLoginCheck(MemberDTO memberDTO) {
		return memberDAO.memberLoginCheck(memberDTO);
	}

	@Override
	public boolean isMemberIdDuplicated(String memberId) {
		return memberDAO.isMemberIdDuplicated(memberId);
	}

	@Override
	public void modMember(MemberDTO memberDTO) {
		memberDAO.modMember(memberDTO);
	}

	@Override
	public MemberDTO update(MemberDTO memberDTO) {
		return memberDAO.update(memberDTO);
	}

	@Override
	public void delMemberWithDependencies(String memberId) {
		memberDAO.deleteTripShareContentByMemberId(memberId);
		memberDAO.deleteTripShareByMemberId(memberId);
		memberDAO.deleteTripDayByMemberId(memberId);
		memberDAO.deleteTripPlanByMemberId(memberId);
		memberDAO.delMemberById(memberId);
	}

	@Override
	public int findMemberNameAndEmail(MemberDTO memberDTO) {
		return memberDAO.findMemberNameAndEmail(memberDTO);
	}

	@Override
	public List<MemberDTO> selectIdListByEmailAndName(MemberDTO memberDTO) {
		return memberDAO.selectIdListByEmailAndName(memberDTO);
	}

	@Override
	public int findMemberIdAndEmail(MemberDTO memberDTO) {
		return memberDAO.findMemberIdAndEmail(memberDTO);
	}

	@Override
	public String selectMemberId(MemberDTO memberDTO) {
		return memberDAO.selectMemberId(memberDTO);
	}

	@Override
	public int updateMemberPwd(MemberDTO memberDTO) {
		return memberDAO.updateMemberPwd(memberDTO);
	}

	@Override
	public MemberDTO selectMember(String memberId) {
		return memberDAO.selectMember(memberId);
	}
	
	public void updateProfileImage(String memberId, String memberProfileImage) {
		memberDAO.updateProfileImage(memberId, memberProfileImage);
	}
}
