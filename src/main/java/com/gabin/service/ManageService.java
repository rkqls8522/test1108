package com.gabin.service;

import java.util.List;

import com.gabin.VO.Manage;

public interface ManageService {

	public List<Manage> list();
	public void insert(Manage manage);
	public Manage read(int mpno); 
	public void delete(int mpno);
	public void update(Manage manage);
	public List<Manage> search();

}
