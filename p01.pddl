(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
    sat1 - satellite
    instrument1 - instrument
    image1 - mode
    Star0 GroundStation1 Phenomenon2 - direction
)
(:init
    (on_board instrument1 sat1)
    (supports instrument1 image1)
    (power_avail sat1)
    (pointing sat1 Star0)
    (calibration_target instrument1 GroundStation1)
)
(:goal (and
    (have_image Phenomenon2 image1)
))
)