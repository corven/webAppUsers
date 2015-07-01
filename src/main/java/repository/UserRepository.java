package repository;

import model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class UserRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addUser(User user) {
        this.sessionFactory.getCurrentSession().save(user);
    }

    public List<User> listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from User").list();
    }

    public void removeUser(Integer id) {
        User user = (User)this.sessionFactory.getCurrentSession().load(User.class, id);
        if (null != user) {
            this.sessionFactory.getCurrentSession().delete(user);
        }
    }
}
