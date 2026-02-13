(define (domain satellite)
  (:requirements :strips :equality :typing)
  (:types satellite direction instrument mode)

  (:predicates 
    (on_board ?i - instrument ?s - satellite)
    (supports ?i - instrument ?m - mode)
    (pointing ?s - satellite ?d - direction)
    (power_avail ?s - satellite)
    (power_on ?i - instrument)
    (calibrated ?i - instrument)
    (have_image ?d - direction ?m - mode)
    (calibration_target ?i - instrument ?d - direction))

  ;; Acción 1: Girar el satélite
  (:action turn_to
   :parameters (?s - satellite ?d_new - direction ?d_prev - direction)
   :precondition (and (pointing ?s ?d_prev) (not (= ?d_new ?d_prev)))
   :effect (and (pointing ?s ?d_new) (not (pointing ?s ?d_prev))))

  ;; Acción 2: Encender instrumento
  (:action switch_on
   :parameters (?i - instrument ?s - satellite)
   :precondition (and (on_board ?i ?s) (power_avail ?s))
   :effect (and (power_on ?i) (not (power_avail ?s))))

  ;; Acción 3: Apagar instrumento (para recuperar energía)
  (:action switch_off
   :parameters (?i - instrument ?s - satellite)
   :precondition (and (on_board ?i ?s) (power_on ?i))
   :effect (and (not (power_on ?i)) (power_avail ?s)))

  ;; Acción 4: Calibrar instrumento
  (:action calibrate
   :parameters (?s - satellite ?i - instrument ?d - direction)
   :precondition (and (on_board ?i ?s) (pointing ?s ?d) (calibration_target ?i ?d) (power_on ?i))
   :effect (calibrated ?i))

  ;; Acción 5: Tomar imagen (El objetivo final)
  (:action take_image
   :parameters (?s - satellite ?d - direction ?i - instrument ?m - mode)
   :precondition (and (calibrated ?i) (on_board ?i ?s) (supports ?i ?m) (power_on ?i) (pointing ?s ?d))
   :effect (have_image ?d ?m))
)