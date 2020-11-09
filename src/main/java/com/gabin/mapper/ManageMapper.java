package com.gabin.mapper;

import java.util.List;

import com.gabin.VO.Manage;
public interface ManageMapper {
	
	public List<Manage> list(); //list가져오기
	public void insert(Manage manage); //추가
	public Manage read(int mpno);//한 사람의 정보 가져오기
	public void delete(int mpno); //삭제
	public void update(Manage manage); //수정
	public List<Manage> search();
}
