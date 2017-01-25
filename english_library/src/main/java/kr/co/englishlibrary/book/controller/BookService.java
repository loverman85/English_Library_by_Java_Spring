package kr.co.englishlibrary.book.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.englishlibrary.HomeController;
import kr.co.englishlibrary.controllers.Daos;
import kr.co.englishlibrary.services.Genre;

@Service
public class BookService {
	@Autowired
	private BookDao bookDao;
	@Autowired
	private Daos dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	public List<Genre> getGenre(){
		logger.debug("getGenre() 메서드 호출");
		return dao.selectAllGenre();
	}
}
