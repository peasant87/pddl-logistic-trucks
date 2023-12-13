(define (domain cargo)
  (:requirements :strips :action-costs) 
  (:predicates 	
    (cargo ?crg)
	  (truck ?truck)
    (driver ?drv)
    (location ?loc)
    (category ?cat)
	  (at ?crg ?loc)
	  (in ?crg ?truck)
    (compatible ?crg ?cat)
  )

(:functions
    (total-cost) - number
)
 
(:action load-truck
  :parameters
   (?crg
    ?truck
    ?loc
    ?cat)
  :precondition
   (and (cargo ?crg) (truck ?truck) (location ?loc) (category ?cat)
   (at ?truck ?loc) (at ?crg ?loc) (compatible ?truck ?cat) (compatible ?crg ?cat))
  :effect
   (and (not (at ?crg ?loc)) (in ?crg ?truck)))


(:action board-truck
  :parameters
   (?truck
    ?loc
    ?drv
    ?cat)
  :precondition
   (and (truck ?truck) (driver ?drv) (location ?loc) (category ?cat)
   (at ?truck ?loc) (at ?drv ?loc) (compatible ?truck ?cat) (compatible ?drv ?cat))
  :effect
   (and (not (at ?drv ?loc)) (in ?drv ?truck)))


(:action unload-truck
  :parameters
   (?crg
    ?truck
    ?loc
    ?drv)
  :precondition
   (and (cargo ?crg) (truck ?truck) (driver ?drv) (location ?loc)
        (at ?truck ?loc) (in ?crg ?truck) (in ?drv ?truck))
  :effect
   (and (not (in ?crg ?truck)) (at ?crg ?loc) (not (in ?drv ?truck)) (at ?drv ?loc)))


(:action drive-truck
  :parameters
   (?truck
    ?loc-from
    ?loc-to
    ?drv)
  :precondition
   (and (truck ?truck) (location ?loc-from) (location ?loc-to) (driver ?drv)
   (at ?truck ?loc-from) (in ?drv ?truck))
  :effect
   (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to) (increase (total-cost) 1)))
)