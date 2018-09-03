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
		List<String> cityList = em.createQuery("SELECT DISTINCT city from Hotel", String.class).getResultList();
		return new TreeSet<>(cityList);
	}

	public List<Hotel> findByCity(String city) {
		return em.createQuery("FROM Hotel WHERE city = :city ORDER BY pricePerNight").setParameter("city", city)
				.getResultList();
	}
}
