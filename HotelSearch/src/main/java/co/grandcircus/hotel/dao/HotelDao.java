package co.grandcircus.hotel.dao;

import java.util.List;
import java.util.TreeSet;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.hotel.entity.Hotel;

@Repository
@Transactional
public class HotelDao {

	@PersistenceContext
	private EntityManager em;

	public List<Hotel> findAll() {
		// Use Java identifiers since "talking" to computer
		return em.createQuery("From Hotel", Hotel.class).getResultList();
	}

	public Object getHotelInfoByCity() {
		List<String> cities = em.createQuery("SELECT DISTINCT city from Hotel", String.class).getResultList();
		return new TreeSet<>(cities);
	}

	public List<Hotel> findByCity(String city) {
		return em.createQuery("from Hotel where city = :city order by pricePerNight", Hotel.class)
				.setParameter("city", city).getResultList();
	}

	// public Hotel findById(Long id) {
//		// TODO Auto-generated method stub
//		return em.find(Hotel.class, id);
//	}
//
//	public List<Hotel> findByName(String name) {
//		// TODO Auto-generated method stub
//		return em.createQuery("from Product where name like = :n", Hotel.class).setParameter("n", "%" + name + "%") // .getResultList()
//				.getResultList(); // :n = "name"

}
