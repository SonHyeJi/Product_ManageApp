package com.ssg.product_manageapp.controller;

import com.ssg.product_manageapp.dto.ProductDTO;
import com.ssg.product_manageapp.service.ProudctService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/product")
@Log4j2
@RequiredArgsConstructor
public class ProductController {

    private final ProudctService proudctService;

    @GetMapping("/register")
    public void register() {
        log.info("todo register.....");
    }

    @PostMapping("/register")
    public String registerPost(@Valid ProductDTO productDTO, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
        log.info("register");

        if(bindingResult.hasErrors()){
            log.info("has error.......");
            redirectAttributes.addFlashAttribute("errors",bindingResult.getAllErrors());
            return "redirect:/product/register";
        }

        log.info(productDTO);
        proudctService.register(productDTO);
        return "redirect:/product/list";
    }

    @RequestMapping("/list")
    public void list(@Valid Model model) {
        log.info("todo list......");

        model.addAttribute("dtoList", proudctService.listAll());
    }

    @GetMapping({"/listOne", "/modify"})
    public void listOne(@RequestParam(name = "id") int id, Model model){
        log.info("listOne...");
        model.addAttribute("dto",proudctService.listOne(id));
    }

    @PostMapping("/modify")
    public String modify(@Valid ProductDTO productDTO, BindingResult bindingResult, RedirectAttributes redirectAttributes){
        log.info("modify.....");

//        if(bindingResult.hasErrors()){
//            log.info("has errors.....");
//            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors());
//            redirectAttributes.addFlashAttribute("productDTO", productDTO);
//            return "redirect:/product/modify?id=" + productDTO.getId();
//        }

        proudctService.modify(productDTO);

        return "redirect:/product/list";
    }

    @GetMapping("/delete")
    public String delete(int id, RedirectAttributes redirectAttributes){
        log.info("delete");

        proudctService.delete(id);
        return "redirect:/product/list";
    }

    @GetMapping("/search")
    public String search(@RequestParam("searchString") String searchString, Model model) {
        log.info("Searching for products with name containing: {}", searchString);
        List<ProductDTO> searchResults = proudctService.searchByName(searchString);
        model.addAttribute("dtoList", searchResults);
        return "/product/list";
    }
}
