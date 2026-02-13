(define (problem strips-sat-x-10)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	satellite3 - satellite
	instrument3 - instrument
	satellite4 - satellite
	instrument4 - instrument
	image1 - mode
	spectrograph2 - mode
	thermograph0 - mode
	GroundStation2 - direction
	GroundStation1 - direction
	GroundStation0 - direction
	Star3 - direction
	Star4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Planet10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Planet18 - direction
	Star19 - direction
	Star20 - direction
	Phenomenon21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Planet24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 GroundStation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star15)
	(supports instrument1 image1)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star19)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation1)
	(supports instrument3 image1)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument3 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star3)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument4 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet17)
)
(:goal (and
	(pointing satellite0 Star5)
	(have_image Star5 spectrograph2)
	(have_image Phenomenon6 thermograph0)
	(have_image Star7 spectrograph2)
	(have_image Phenomenon8 spectrograph2)
	(have_image Planet9 spectrograph2)
	(have_image Planet10 spectrograph2)
	(have_image Planet11 image1)
	(have_image Phenomenon12 spectrograph2)
	(have_image Phenomenon13 thermograph0)
	(have_image Star14 thermograph0)
	(have_image Star15 image1)
	(have_image Phenomenon16 thermograph0)
	(have_image Planet17 image1)
	(have_image Planet18 spectrograph2)
))
)