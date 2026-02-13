(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
    sat1 - satellite
    instrument1 - instrument
    image1 - mode
    Star0 GroundStation1 Phenomenon2 - direction
)
(:init
    ;; --- Estado Lógico ---
    (on_board instrument1 sat1)
    (supports instrument1 image1)
    (power_avail sat1)
    (pointing sat1 Star0)
    (calibration_target instrument1 GroundStation1)

    ;; --- Estado Numérico (Nuevas líneas) ---
    (= (fuel sat1) 100)      ;; Nivel inicial de combustible del satélite
    (= (fuel-used) 0)        ;; Inicialización del contador de gasto global
)
(:goal (and
    (have_image Phenomenon2 image1)
))

;; --- Métrica de Optimización ---
;; Esto le indica al planificador que, de todos los planes posibles, 
;; busque el que gaste menos combustible.
(:metric minimize (fuel-used))
)