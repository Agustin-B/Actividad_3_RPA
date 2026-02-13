(define (problem strips-sat-x-3)
(:domain satellite)
(:objects
    sat1 sat2 - satellite
    inst1 inst2 inst3 - instrument
    thermograph infrared spectrograph - mode
    Star0 GroundStation1 Star2 Planet3 Phenomenon4 Planet5 Star6 - direction
)
(:init
    (on_board inst1 sat1)
    (supports inst1 thermograph)
    (calibration_target inst1 GroundStation1)
    (power_avail sat1)
    (pointing sat1 Star0)

    (on_board inst2 sat2)
    (supports inst2 infrared)
    (calibration_target inst2 Star2)
    
    (on_board inst3 sat2)
    (supports inst3 spectrograph)
    (calibration_target inst3 Star2)
    (power_avail sat2)
    (pointing sat2 Star6)
)
(:goal (and
    (have_image Planet3 thermograph)
    (have_image Phenomenon4 infrared)
    (have_image Planet5 spectrograph)
    (have_image Star6 thermograph)
))
)