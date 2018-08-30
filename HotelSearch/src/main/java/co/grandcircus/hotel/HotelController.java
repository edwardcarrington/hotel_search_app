package co.grandcircus.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotel.dao.HotelDao;

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
	public ModelAndView listHotelsByCity(@RequestParam(value = "city", required = false) String city) {
		ModelAndView mav = new ModelAndView("hotels");
		if (city != null && !city.isEmpty()) {
			mav.addObject("hotels", hotelDao.findByCity(city));

		}

		mav.addObject("city", city);
		return mav;

	}
}
