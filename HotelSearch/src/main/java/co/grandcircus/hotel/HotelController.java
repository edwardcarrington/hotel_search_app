package co.grandcircus.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotel.dao.HotelDao;
import co.grandcircus.hotel.entity.Hotel;

@Controller
public class HotelController {

	@Autowired
	private HotelDao hotelDao;

	@RequestMapping("/")
	public ModelAndView showHomePage() {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("cities", hotelDao.getHotelInfoByCity());
		return mav;

	}

	@RequestMapping("/results")
	public ModelAndView listHotelsByCity(@RequestParam(value = "city") String city) {
		ModelAndView mav = new ModelAndView("results");
		List<Hotel> hotel = hotelDao.findByCity(city);
		mav.addObject("hotels", hotel);
		return mav;

	}
}
