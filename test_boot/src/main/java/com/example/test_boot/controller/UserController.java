package com.example.test_boot.controller;

import com.example.test_boot.common.R;
import com.example.test_boot.domian.User;
import com.example.test_boot.service.UserService;
import com.example.test_boot.vo.UserVo;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/getUserList")
    public R getList(@RequestParam("page") Integer page,@RequestParam("pageSize") Integer pageSize){

       PageInfo<User> users = userService.getList(page,pageSize);
       return new R(200,"success",users);
    }

    @GetMapping("/info/{id}")
    public R getInfoById(@PathVariable Integer id){
        User user = userService.getInfoById(id);
        if (user!=null){
            return new R(200,"success",user);
        }else {
            return new R(-1,"没有这个人",null);
        }

    }
    @PutMapping("/update")
    public R updateInfo(@RequestBody UserVo userVo) {
        Boolean status = userService.updateInfo(userVo);
        if (status) {
            return new R(200, "修改成功", null);
        } else {
            return new R(-1, "修改失败", null);
        }

    }
    @PostMapping("/addUser")
    public R addUser(@RequestBody UserVo userVo) {
        Boolean status = userService.addUser(userVo);
        if (status) {
            return new R(200, "添加成功", null);
        } else {
            return new R(-1, "添加失败", null);
        }

    }
    @DeleteMapping("/removeUser/{id}")
    public R removeUser(@PathVariable("id") Integer id) {
        Boolean status = userService.removeUser(id);
        if (status) {
            return new R(200, "删除成功", null);
        } else {
            return new R(-1, "删除失败", null);
        }

    }
    //批量删除
    @DeleteMapping("/removeUsers")
    public R removeUsers(@RequestParam String ids) {

        System.out.println(ids);
        String[] id = ids.split(",");

        Boolean status = userService.removeUsers(id);
        if (status) {
            return new R(200, "删除成功", null);
        } else {
            return new R(-1, "删除失败", null);
        }
    }
    @PostMapping("/forSearch")
    public R search(@RequestParam("key") String key){
        try {
            List<User> users =  userService.search(key);
            return new R(200,"success",users);
        }catch (Exception e){
            return new R(500,"error",null);
        }

    }

}
