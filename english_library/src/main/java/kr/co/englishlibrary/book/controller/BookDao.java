package kr.co.englishlibrary.book.controller;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.englishlibrary.book.service.Book;

@Repository
public class BookDao {
	@Autowired
	private SqlSessionTemplate sql;

	private static final Logger logger = LoggerFactory.getLogger(BookDao.class);

	// 도서등록
	public int insertBook(Book book) {
		logger.debug("insertBook() 메서드 호출");
		return sql.insert("book.insertBook", book);
	}

	// 도서코드로 도서정보 검색
	public Book selectOneBookByCode(String bookCode) {
		logger.debug("selectOneBookByCode() 메서드 호출");
		logger.debug("값:" + sql.selectOne("book.selectOneBookByCode", bookCode));
		return sql.selectOne("book.selectOneBookByCode", bookCode);
	}

	// 도서상태 조회 
	public int selectBookState(String bookCode) {
		logger.debug("selectBookState() 메서드 호출");
		return sql.selectOne("book.selectBookState", bookCode);
	}

	// 도서 firstday 변경
	public int updateBookFirstDay(String bookCode) {
		return sql.update("book.updateBookFirstDay", bookCode);
	}

	// 도서의 totalCount +1 해줌
	public int updateBookTotalCount(Map map) {
		return sql.update("book.updateBookTotalCount", map);
	}

	// 도서정보수정(state 도서가능,도서불가,폐기 세가지중 하나로 수정)
	public int updateBookState(Map map) {
		logger.debug("updateBookState() 메서드 호출");
		return sql.update("book.updateBookState", map);
	}

	// 도서의 totalDay + 해줌
	public int updateBookTotalDay(Map map) {
		return sql.update("book.updateBookTotalDay", map);
	}
}
