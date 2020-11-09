package com.gabin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabin.VO.Manage;
import com.gabin.mapper.ManageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
//@Qualifier("ManageServiceImpl")
//@AllArgsConstructor //생성자를 이용한 모든 속성을 자동 DI시킨다.
public class ManageServiceImpl implements ManageService {
	@Setter(onMethod_= @Autowired)

	protected ManageMapper mapper;
	
	
	@Override
	public List<Manage> list() {
		log.info("---리스트---");
		return mapper.list();
	}

	@Override
	public void insert(Manage manage) {
		mapper.insert(manage);
	}

	@Override
	public Manage read(int mpno) {
		return mapper.read(mpno);
	}

	@Override
	public void delete(int mpno) {
		mapper.delete(mpno);
	}

	@Override
	public void update(Manage manage) {
		mapper.update(manage);
	}

	@Override
	public List<Manage> search() {
		return mapper.search();
	}

}
