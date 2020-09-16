package com.maple.service;

import com.maple.mapper.BookInfoMapper;
import com.maple.pojo.BookInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Administrator
 */
@Service
public class BookInfoService {

    private BookInfoMapper bookInfoMapper;

    @Autowired
    public void setBookInfoMapper(BookInfoMapper bookInfoMapper) {
        this.bookInfoMapper = bookInfoMapper;
    }

    public List<BookInfo> queryAllBook(){
        return bookInfoMapper.selectAllBooks();
    }

    public BookInfo queryBookById(int id){
        return bookInfoMapper.queryBookById(id);
    }

    public boolean addBook(BookInfo bookInfo){
        return bookInfoMapper.addBook(bookInfo)>0;
    }

    public boolean delBook(int id){
        return bookInfoMapper.delBook(id)>0;
    }

    public BookInfo queryBookByName(String name){
        return bookInfoMapper.queryBookByName(name);
    }

    public boolean updateById(BookInfo bookInfo){return bookInfoMapper.updateById(bookInfo)>0;};

    public boolean delMultipleBook(List<Integer> delBookList){
        return bookInfoMapper.delMultipleBook(delBookList)>0;
    }

}
