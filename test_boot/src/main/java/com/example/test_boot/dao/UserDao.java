package com.example.test_boot.dao;

import com.example.test_boot.domian.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao {
    List<User> getList();
    User getInfoById(@Param("id") Integer id);

    int updateInfo(User user);

    int addUser(User user);

    int remove(@Param("id")Integer id);

    int removeUsers(String[] id);

    List<User> search(@Param("key") String key);
}
