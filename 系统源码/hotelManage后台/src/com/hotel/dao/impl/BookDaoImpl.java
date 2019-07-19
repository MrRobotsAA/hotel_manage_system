
package com.hotel.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import com.hotel.base.dao.impl.BaseDaoImpl;
import com.hotel.dao.BookDao;
import com.hotel.model.Book;
import com.hotel.model.Room;
import com.hotel.utils.Pager;


@Repository("bookDao")
@SuppressWarnings("unchecked")
public class BookDaoImpl extends BaseDaoImpl<Book> implements BookDao {

    @Override
    public Pager<Book> listAll() {
        String hql = "from Book bean where bean.status=1 ";
        return  findByAlias(hql, null);
    }

    @Override
    public Book bookDetail(int bookId) {
        String hql = "from Book bean where bean.id=:bookId";
        Query q =this.getSession().createQuery(hql);
        q.setParameter("bookId", bookId);
        return (Book) q.uniqueResult();
    }

    @Override
    public Pager<Book> listAllLive() {
        String hql = "from Book bean where bean.status=2 ";
        return  findByAlias(hql, null);
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.dao.BookDao#roomInfo(java.lang.String)
     */
    @Override
    public List<Book> roomInfo(String roomCatName) {
        String hql = "from Book bean where bean.room.isLive=1  and  bean.room.room_cat.roomCatName=:roomCatName ";
        Query q =this.getSession().createQuery(hql);
        q.setParameter("roomCatName", roomCatName);
        return q.list();
    }

    
}
