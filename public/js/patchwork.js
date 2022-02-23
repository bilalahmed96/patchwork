
$(document).ready(function(){
	

	$('.testimonials').slick({
		centerMode: true,
			// centerPadding: '10%',
			// adaptiveHeight: true,
		dots: false,
		arrows: true,
		infinite: false,
		speed: 300,
		slidesToShow: 1,
		slidesToScroll: 1,
		responsive: [
		  {
			breakpoint: 1600,
			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1,
			//   centerPadding: '10%',
			  infinite: true,
			  dots: false,
			  arrows: true
			}
		  },
		  {
			breakpoint: 993,
			centerMode: false,
			infinite: true,

			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1
			}
		  },
		  {
			breakpoint: 769,
			settings: {
				centerMode: false,
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  arrows: false,
			  dots: true

			}
		  }
		 
		]
	  });

	  $('#static-testimonials-carousel, .featured-jobs').slick({
		centerMode: false,
			// centerPadding: '10%',
			// adaptiveHeight: true,
		dots: true,
		arrows: false,
		infinite: false,
		speed: 300,
		slidesToShow: 1,
		slidesToScroll: 1,
		responsive: [
		  {
			breakpoint: 1600,
			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1,
			//   centerPadding: '10%',
			  infinite: true,
			  dots: true,
			  arrows: false
			}
		  },
		  {
			breakpoint: 993,
			centerMode: false,
			infinite: true,

			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1
			}
		  },
		  {
			breakpoint: 769,
			settings: {
				centerMode: false,
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  arrows: false,
			  dots: true

			}
		  }
		 
		]
	  });

	  $('#featured-companies').slick({
		// centerMode: true,
			// centerPadding: '10%',
			// adaptiveHeight: true,
		dots: true,
		
		infinite: false,
		speed: 300,
		slidesToShow: 3,
		slidesToScroll: 1,
		responsive: [
		  {
			breakpoint: 1600,
			settings: {
			  slidesToShow: 3,
			  slidesToScroll: 1,
			  infinite: true,
			  dots: true,
			  arrows: false
			}
		  },
		  {
			breakpoint: 993,
			settings: {
			  slidesToShow: 3,
			  slidesToScroll: 1
			}
		  },
		  {
			breakpoint: 769,
			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  arrows: false,
			  dots: true

			}
		  }
		 
		]
	  });
	  
	  $('.training').slick({
		// centerMode: true,
			// centerPadding: '10%',
			// adaptiveHeight: true,
		dots: true,
		arrows: true,
		infinite: false,
		speed: 300,
		slidesToShow: 3,
		slidesToScroll: 1,
		responsive: [
		  {
			breakpoint: 1600,
			settings: {
			  slidesToShow: 3,
			  slidesToScroll: 1,
			  infinite: true,
			  dots: true,
			  arrows: true
			}
		  },
		  {
			breakpoint: 993,
			settings: {
			  slidesToShow: 3,
			  slidesToScroll: 1
			}
		  },
		  {
			breakpoint: 769,
			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  arrows: false,
			  dots: true

			}
		  }
		 
		]
	  })
	  
	   $('.featured-jobs').slick({
		centerMode: true,
			centerPadding: '10%',
			// adaptiveHeight: true,
		dots: true,
		arrows: false,
		infinite: false,
		speed: 300,
		slidesToShow: 1,
		slidesToScroll: 1,
		responsive: [
		  {
			breakpoint: 1600,
			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  centerPadding: '10%',
			  infinite: true,
			  dots: true,
			  arrows: false
			}
		  },
		  {
			breakpoint: 993,
			centerMode: false,
			infinite: true,

			settings: {
			  slidesToShow: 1,
			  slidesToScroll: 1
			}
		  },
		  {
			breakpoint: 769,
			settings: {
				centerMode: false,
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  arrows: false,
			  dots: true

			}
		  }
		 
		]
	  });
;
})