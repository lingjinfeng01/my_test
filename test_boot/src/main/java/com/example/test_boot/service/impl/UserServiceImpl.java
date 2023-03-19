package com.example.test_boot.service.impl;

import com.example.test_boot.dao.UserDao;
import com.example.test_boot.domian.User;
import com.example.test_boot.service.UserService;
import com.example.test_boot.vo.UserVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public PageInfo<User> getList(Integer page,Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<User> users = userDao.getList();
        return new PageInfo<User>(users);
    }

    @Override
    public User getInfoById(Integer id) {
        return userDao.getInfoById(id);
    }

    @Override
    public Boolean updateInfo(UserVo userVo) {
        User user = new User();
        BeanUtils.copyProperties(userVo,user);
        int i = userDao.updateInfo(user);
        if(i>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Boolean addUser(UserVo userVo) {
        User user = new User();
        BeanUtils.copyProperties(userVo,user);
        int i =  userDao.addUser(user);
        if(i>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Boolean removeUser(Integer id) {
        int i = userDao.remove(id);
        if(i>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Boolean removeUsers(String[] id) {
       int i =  userDao.removeUsers(id);
        if(i>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public List<User> search(String key) {
        List<User> list = userDao.search(key);
        return list;
    }
}
