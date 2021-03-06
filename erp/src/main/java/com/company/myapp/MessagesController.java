package com.company.myapp;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.mapper.BookMapper;
import com.mycompany.vo.Book;
import com.mycompany.vo.myBook;

@Controller
public class MessagesController {
	@Autowired
	private BookMapper bookMapper;
	@RequestMapping(value="/messages", method=RequestMethod.GET)
	public String indexTest(ModelMap model, Principal principal){
		String name = principal.getName(); 
	    model.addAttribute("username", name);
	    List<myBook> mybooks = bookMapper.getMyBook(name);
	    model.addAttribute("mybooks", mybooks);
		return "messages/index";
	}
	@RequestMapping(value = "/messages/new", method = RequestMethod.GET)
	public String newBook() {
		return "messages/new";
	}
	@RequestMapping(value = "/messages", method = RequestMethod.POST)
	public String create(@ModelAttribute myBook myBook, HttpServletRequest request) {
		bookMapper.createMessage(myBook);
		return "redirect:/messages";
	}
	
}
