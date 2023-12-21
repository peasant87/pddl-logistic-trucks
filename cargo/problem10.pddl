(define (problem cargo-16-4-8)
(:domain cargo)
(:objects loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8
 tru1 tru2 tru3 tru4
 crg1 crg2 crg3 crg4 crg5 crg6 crg7 crg8 
 crg9 crg10 crg11 crg12 crg13 crg14 crg15 crg16
 drv1 drv2 drv3 drv4 drv5 drv6 drv7 drv8
 cat1 cat2 cat3)
(:init (cargo crg1) (cargo crg2) (cargo crg3) (cargo crg4) (cargo crg5) (cargo crg6) (cargo crg7) (cargo crg8) 
 (cargo crg9) (cargo crg10) (cargo crg11) (cargo crg12) (cargo crg13) (cargo crg14) (cargo crg15) (cargo crg16)
 (truck tru1) (truck tru2) (truck tru3) (truck tru4)
 (driver drv1) (driver drv2) (driver drv3) (driver drv4) (driver drv5) (driver drv6) (driver drv7) (driver drv8)
 (category cat1) (category cat2) (category cat3)
 (location loc1) (location loc2) (location loc3) (location loc4) (location loc5) (location loc6) (location loc7) (location loc8)

 (at tru1 loc2) (at tru2 loc2) (at tru3 loc4) (at tru4 loc5)
 (at drv1 loc5) (at drv2 loc6) (at drv3 loc7) (at drv4 loc4) (at drv5 loc2) (at drv6 loc6) (at drv7 loc7) (at drv8 loc1)
 (at crg1 loc1) (at crg2 loc2) (at crg3 loc5) (at crg4 loc6) (at crg5 loc8) (at crg6 loc2) (at crg7 loc7) (at crg8 loc4) 
 (at crg9 loc4) (at crg10 loc8) (at crg11 loc1) (at crg12 loc7) (at crg13 loc1) (at crg14 loc5) (at crg15 loc2) (at crg16 loc8)

 (compatible tru1 cat2) (compatible tru2 cat1) (compatible tru3 cat3) (compatible tru4 cat2)
 (compatible drv1 cat1) (compatible drv2 cat1) (compatible drv2 cat2) (compatible drv3 cat1)
 (compatible drv4 cat1) (compatible drv4 cat2) (compatible drv4 cat3) (compatible drv5 cat1) (compatible drv5 cat2) (compatible drv6 cat1)
 (compatible drv7 cat1) (compatible drv7 cat2) (compatible drv7 cat3) (compatible drv8 cat1) (compatible drv8 cat2)
 (compatible crg1 cat3) (compatible crg2 cat2) (compatible crg3 cat1) (compatible crg4 cat3) (compatible crg5 cat2) (compatible crg6 cat1) 
 (compatible crg7 cat1) (compatible crg8 cat3) (compatible crg9 cat2) (compatible crg10 cat3) (compatible crg11 cat1) (compatible crg12 cat3)
 (compatible crg13 cat2) (compatible crg14 cat3) (compatible crg15 cat2) (compatible crg16 cat1)
 (= (total-cost) 0))

(:goal (and (at crg1 loc3) (at crg2 loc8) (at crg3 loc1) (at crg4 loc8) (at crg5 loc3) (at crg6 loc4)
            (at crg7 loc1) (at crg8 loc6) (at crg9 loc1) (at crg10 loc3) (at crg11 loc6) (at crg12 loc8)
            (at crg13 loc6) (at crg14 loc3)(at crg15 loc2) (at crg16 loc7)))

(:metric minimize (total-cost))
)