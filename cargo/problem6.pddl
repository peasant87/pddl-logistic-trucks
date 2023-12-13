(define (problem cargo-12-3-6)
(:domain cargo)
(:objects loc1 loc2 loc3 loc4 
 tru1 tru2 tru3 
 crg1 crg2 crg3 crg4 crg5 crg6 crg7 crg8 crg9 crg10 crg11 crg12 
 drv1 drv2 drv3 drv4 drv5 drv6
 cat1 cat2 cat3)
(:init (cargo crg1) (cargo crg2) (cargo crg3) (cargo crg4) (cargo crg5) (cargo crg6) 
 (cargo crg7) (cargo crg8) (cargo crg9) (cargo crg10) (cargo crg11) (cargo crg12)
 (truck tru1) (truck tru2) (truck tru3)
 (driver drv1) (driver drv2) (driver drv3) (driver drv4) (driver drv5) (driver drv6)
 (category cat1) (category cat2) (category cat3)
 (location loc1) (location loc2) (location loc3) (location loc4)

 (at tru1 loc1) (at tru2 loc2) (at tru3 loc4)
 (at drv1 loc1) (at drv2 loc2) (at drv3 loc3) (at drv4 loc4) (at drv5 loc2) (at drv6 loc3)
 (at crg1 loc1) (at crg2 loc2) (at crg3 loc3) (at crg4 loc4) (at crg5 loc1) (at crg6 loc2) 
 (at crg7 loc3) (at crg8 loc4) (at crg9 loc4) (at crg10 loc2) (at crg11 loc1) (at crg12 loc3)

 (compatible tru1 cat1) (compatible tru2 cat2) (compatible tru2 cat3) 
 (compatible drv1 cat1) (compatible drv2 cat1) (compatible drv2 cat2) (compatible drv3 cat1) 
 (compatible drv4 cat1) (compatible drv4 cat2) (compatible drv4 cat3) (compatible drv5 cat1) (compatible drv5 cat2) (compatible drv6 cat1)
 (compatible crg1 cat1) (compatible crg2 cat2) (compatible crg3 cat1) (compatible crg4 cat3) (compatible crg5 cat2) (compatible crg6 cat1) 
 (compatible crg7 cat2) (compatible crg8 cat1) (compatible crg9 cat2) (compatible crg10 cat3) (compatible crg11 cat1) (compatible crg12 cat3)
 (= (total-cost) 0))

(:goal (and (at crg1 loc3) (at crg2 loc4) (at crg3 loc1) (at crg4 loc2)(at crg5 loc3) (at crg6 loc4)
            (at crg7 loc1) (at crg8 loc2) (at crg9 loc1) (at crg10 loc3)(at crg11 loc3) (at crg12 loc4)))

(:metric minimize (total-cost))
)