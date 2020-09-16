package com.maple.controller;

import com.maple.pojo.BookInfo;
import com.maple.service.BookInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


/**
 * @author Maple
 */
@Controller
@RequestMapping("/book")
public class BookController {

    private BookInfoService bookInfoService;

    @Autowired
    public void setBookInfoService(BookInfoService bookInfoService) {
        this.bookInfoService = bookInfoService;
    }


    @GetMapping("/allBook")
    public String toBookList(Model model) {
        model.addAttribute("booklist", bookInfoService.queryAllBook());
        return "booklist";
    }

    @GetMapping(path = "/toBookDetail/{bookId}")
    public String toBookDetail(@PathVariable("bookId") int id, Model model) {
        model.addAttribute("detail", bookInfoService.queryBookById(id));
        return "book_detail";
    }


}
