package com.forpet.controller.ListPage;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.service.ListPage.ListPageSercive;

@Controller
@RequestMapping("/board/*")
public class ListPageController {

	@Inject
	private ListPageSercive service;
	/**
	 * 지역 검색 시터 리스트
	 */
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void SitterListPage(Model model, @RequestParam(value="keyword", required = false)String keyword) throws Exception {
		if (keyword == null || keyword == "") {
			model.addAttribute("SitterListPage", service.ScoreSorting());
		} else {
			model.addAttribute("SitterListPage", service.SitterListPage(keyword));
		}
	}
	/**
	 * AJax 시터 리스트
	 */
	@RequestMapping(value = "/sitterAllList", method = RequestMethod.GET)
	public void sitterAllList(Model model, @RequestParam(value="keyword", required = false)String keyword) throws Exception {
		model.addAttribute("SitterListPage", service.SitterListPage(keyword));
	}
	/**
	 * 시터 상세 정보 페이지
	 */
}
