package com.example.test_boot.domian;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class User {
    @TableId
    private Integer id;
    private String name;
    private Integer age;
    private String gender;
    private String phone;
    private String address;
}
