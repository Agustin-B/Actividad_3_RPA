(define (problem strips-sat-x-2)
(:domain satellite)
(:objects
    sat1 sat2 - satellite
    inst1 inst2 - instrument
    thermograph infrared - mode
    Star0 GroundStation1 Planet3 Phenomenon4 - direction
)
(:init
    ;; Configuración Satélite 1
    (on_board inst1 sat1)
    (supports inst1 thermograph)
    (power_avail sat1)
    (pointing sat1 Star0)
    (calibration_target inst1 GroundStation1)

    ;; Configuración Satélite 2
    (on_board inst2 sat2)
    (supports inst2 infrared)
    (power_avail sat2)
    (pointing sat2 Star0)
    (calibration_target inst2 GroundStation1)
)
(:goal (and
    (have_image Planet3 thermograph)
    (have_image Phenomenon4 infrared)
))
)