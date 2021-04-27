package com.repositories;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Comment;
import com.services.CommentService;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CommentRepository implements CommentService{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public boolean add(Comment comment) {
		Session session = null;
		try {
			session=sessionFactory.getCurrentSession();
			session.save(comment);
			return true;
		} catch (HibernateException e) {
			// TODO: handle exception
			return false;
		}
	}

	@Override
	@Transactional
	public void ApproveCommend(List<Integer> listComent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional
	public boolean deleteCommend(List<Integer> listComent) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	@Transactional
	public void ApproveCommend(int id) {
		Session session = null;
		session=sessionFactory.getCurrentSession();
		session.createQuery("update Comment set status='published' where id =:id").setParameter("id", id).executeUpdate();
		
		
	}

	@Override
	@Transactional
	public boolean deleteCommend(int id) {
		Session session = null;
		Comment comment=null;
		try {
			session=sessionFactory.getCurrentSession();
			comment=(Comment) session.get(Comment.class, id);
			session.delete(comment);
			return true;
		} catch (HibernateException e) {
			// TODO: handle exception
			return false;
		}
	}

	@Override
	@Transactional
	public Comment getById(int id) {
		Session session=null;
		Comment comment=null;
		session=sessionFactory.getCurrentSession();
		comment=(Comment) session.get(Comment.class, id);
		return comment;
	}

	@Override
	@Transactional
	public List<Comment> getListCommentByIDPost(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<Comment> getListCommentBiIDUser(int id) {
		// TODO Auto-generated method stub
		List<Comment> comments=null;
		Session session=sessionFactory.getCurrentSession();	
		String hql="select DISTINCT a.* from Comment a join Post b "
				+ "on a.id_post=b.id where b.author_id=" +String.valueOf(id);
		comments=session.createSQLQuery(hql).addEntity(Comment.class).list();
		return comments;
	}

}
