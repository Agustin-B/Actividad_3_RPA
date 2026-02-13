(define (problem strips-sat-x-2)
(:domain satellite)
(:objects
    sat1 sat2 - satellite
    inst1 inst2 - instrument
    thermograph infrared - mode
    Star0 GroundStation1 Planet3 Phenomenon4 - direction
)
(:init
    ;; --- Configuración Lógica Satélite 1 ---
    (on_board inst1 sat1)
    (supports inst1 thermograph)
    (power_avail sat1)
    (pointing sat1 Star0)
    (calibration_target inst1 GroundStation1)

    ;; --- Configuración Lógica Satélite 2 ---
    (on_board inst2 sat2)
    (supports inst2 infrared)
    (power_avail sat2)
    (pointing sat2 Star0)
    (calibration_target inst2 GroundStation1)

    ;; --- Estado Numérico (Fluents) ---
    ;; Se asignan recursos individuales a cada satélite para gestionar la autonomía
    (= (fuel sat1) 100)      
    (= (fuel sat2) 100)      
    
    ;; Inicialización de la métrica de consumo global
    (= (fuel-used) 0)        
)
(:goal (and
    (have_image Planet3 thermograph)
    (have_image Phenomenon4 infrared)
))

;; --- Métrica de Optimización ---
;; Indispensable para que el planificador numérico compare la eficiencia de los planes
(:metric minimize (fuel-used))
)