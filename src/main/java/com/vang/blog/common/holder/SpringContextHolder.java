package com.vang.blog.common.holder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * spring容器中的bean提供的工具类
 * @author lingaofeng
 *
 */
public class SpringContextHolder implements ApplicationContextAware {

	/**
	 * 应用上下文
	 */
	private static ApplicationContext applicationContext;

	@Override
    public void setApplicationContext(ApplicationContext applicationContext) {
		SpringContextHolder.applicationContext = applicationContext;
	}

	public static ApplicationContext getApplicationContext() {
		checkApplicationContext();
		return applicationContext;
	}

	/**
	 * 通过bean的名字获取Bean
	 * @param name bean的名字
	 * @return Bean
	 */
	@SuppressWarnings("unchecked")
	public static <T> T getBean(String name) {
		checkApplicationContext();
		return (T) applicationContext.getBean(name);
	}

	/**
	 * 通过Bean的类型获取Bean
	 * @param clazz Bean的类型
	 * @return Bean
	 */
	@SuppressWarnings("unchecked")
	public static <T> T getBean(Class<T> clazz) {
		checkApplicationContext();
		return (T) applicationContext.getBeansOfType(clazz);
	}

	private static void checkApplicationContext() {
		if (applicationContext == null) {
			throw new IllegalStateException("applicaitonContext未注入");
		}
	}
}
