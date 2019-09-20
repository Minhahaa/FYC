package com.kh.yc.project.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;

public interface ProjectService {

	//게시물 목록 갯수 조회용 메소드
	int getListCount() throws ProjectSelectListException;
	//페이징 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException;
	//상세보기 메소드
	public Project detailProject(int projectNo);
	//나의 메이커 게시글조회용
	public ArrayList<Project> selectProjectList2(PageInfo pi, Member m) throws ProjectSelectListException;
	//서포터 정보 조회
	ArrayList<Project> selectSupportList(int bNum);
	//서포터 정렬
	ArrayList<Project> selectSupportList2(SupportList sl);
	ArrayList<Project> selectSupportList3(SupportList sl);
	
	//프로젝트의 리워드 종류 출력
	ArrayList<Project> receipt(int bNum);
	//리워드 count출력
	ArrayList<Integer> receipt2(int bNum);


	ArrayList<Project> memberCategory(String category);

	//좋아요 기능
	public int insertLike(Interest inter);
	//좋아요 취소 기능
	public int deleteLike(Interest inter);
	//좋아요 여부
	public int likeCount(Interest inter);

	//서포트리스트 출력
	ArrayList<SupportList> selectSupportListExcel(int bNum);
	//업로드 엑셀 위치파악 메소드
	List<SupportList> getExcelUpload(String string);;


	
	
	
}
