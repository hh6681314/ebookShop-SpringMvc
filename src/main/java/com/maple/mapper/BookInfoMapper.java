package com.maple.mapper;

import com.maple.pojo.BookInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookInfoMapper {

     BookInfo queryBookById(int id);

     List<BookInfo> selectAllBooks();

     int addBook(BookInfo bookInfo);

     int delBook(int id);

     BookInfo queryBookByName(String name);

     int updateById(BookInfo bookInfo);

     int delMultipleBook(List<Integer> delBookList);

}
