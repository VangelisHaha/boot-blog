package com.vang.blog;

import com.vang.blog.common.config.RedisClient;
import com.vang.blog.common.service.LockService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BootBlogApplicationTests {


    @Autowired
    private WebApplicationContext wac;


    private MockMvc mockMvc;


    /**
     * 注入RestTemplate组件
     */
    @Autowired
    private RestTemplate restTemplate;


    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    /**
     * 注入RedisClient组件
     */
    @Autowired
    private RedisClient redisClient;

    /**
     * 注入LockService组件
     */
    @Autowired
    private LockService lockService;

    @Before
    public void before() {
        mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
        System.out.println("——————————————————开始——————————————————————");
    }

    @After
    public void after() {
        System.out.println("——————————————————结束——————————————————————");
    }

    @Test
    public void test() {
        redisClient.set("ahdfha", "王杰", 200L);
        System.out.println(redisClient.getString("ahdfha"));
    }

    @Test
    public void redisLock() {
        new Thread(() -> {
            String test = lockService.getRedisLock("test", 2000L, 100000L);
            System.out.println("线程"+Thread.currentThread().getId()+"正在获取锁"+test);
        });
        String test = lockService.getRedisLock("test", 2000L, 100000L);
        System.out.println("线程"+Thread.currentThread().getId()+"正在获取锁"+test);
    }

    @Test
    public void threadTest(){
        for (int i = 0; i < 10; i++) {
            new Thread(() -> {
                System.out.println("线程"+Thread.currentThread().getId()+"正在获取锁");
            });
        }
    }
}
