package com.example.test_boot.service;

import com.example.test_boot.domian.User;
import com.example.test_boot.vo.UserVo;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface UserService {
    PageInfo<User> getList(Integer page, Integer pageSize);

    User getInfoById(Integer id);

    Boolean updateInfo(UserVo userVo);

    Boolean addUser(UserVo userVo);

    Boolean removeUser(Integer id);

    Boolean removeUsers(String[] id);

    List<User> search(String key);
}
