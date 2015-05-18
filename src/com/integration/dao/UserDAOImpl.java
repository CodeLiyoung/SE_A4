package com.integration.dao;
import java.util.List;
import com.integration.entity.User;
import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class UserDAOImpl extends HibernateDaoSupport implements UserDAO{
	public void save(User user) {
		this.getHibernateTemplate().save(user);		
	}
	public User getUser(String name)
	{
		String hsql="from User u where u.name='"+name+"'";
		User result=(User)((Query) this.getHibernateTemplate().find(hsql)).uniqueResult();
		return result;
	}	
	public void delete(String email) {
			this.getHibernateTemplate().delete(findById(email));
	}	
	public void update(User user){
			this.getHibernateTemplate().update(user);
	}
	public User findById(String email) {
			User user = (User) this.getHibernateTemplate().get(User.class, email);
			return user;
	}	
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
			String queryString = "from User";
			List<User> list =this.getHibernateTemplate().find(queryString);
			return list;
	}

}