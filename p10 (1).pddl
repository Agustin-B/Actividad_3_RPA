(define (problem strips-sat-x-10)
(:domain satellite)
(:objects
	satellite0 satellite1 satellite2 satellite3 satellite4 - satellite
	instrument0 instrument1 instrument2 instrument3 instrument4 - instrument
	image1 spectrograph2 thermograph0 - mode
	GroundStation2 GroundStation1 GroundStation0 - direction
	Star3 Star4 Star5 Phenomenon6 Star7 Phenomenon8 Planet9 Planet10 
	Planet11 Phenomenon12 Phenomenon13 Star14 Star15 Phenomenon16 
	Planet17 Planet18 Star19 Star20 Phenomenon21 Phenomenon22 
	Planet23 Planet24 - direction
)
(:init
    ;; --- Configuración Satélite 0 ---
	(supports instrument0 thermograph0)
	(calibration_target instrument0 GroundStation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star15)
    (= (fuel satellite0) 500)

    ;; --- Configuración Satélite 1 ---
	(supports instrument1 image1)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star19)
    (= (fuel satellite1) 500)

    ;; --- Configuración Satélite 2 ---
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation1)
    (= (fuel satellite2) 500)

    ;; --- Configuración Satélite 3 ---
	(supports instrument3 image1)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument3 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star3)
    (= (fuel satellite3) 500)

    ;; --- Configuración Satélite 4 ---
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument4 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet17)
    (= (fuel satellite4) 500)

    ;; --- Métrica Global ---
    (= (fuel-used) 0)
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

;; --- Métrica de Optimización ---
;; El objetivo es minimizar el combustible total para maximizar la vida útil de la flota.
(:metric minimize (fuel-used))
)