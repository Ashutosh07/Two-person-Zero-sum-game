
#QUESTION 2
library(lpSolveAPI)

Food <- make.lp(0, 12)

lp.control(Food, sense= "maximize")
set.objfn(Food, c(1195.8,1047.4,1497,1205.8,1057.4,1507,1185.8,1037.4,1487,1095.8,947.4,1397))
add.constraint(Food, c(0.8,0.1,0.05,0.05,0,0,0,0,0,0,0,0),">=",1)
add.constraint(Food, c(0,0,0,0,0.6,0.25,0.05,0.1,0,0,0,0),">=",0.8)
add.constraint(Food, c(0,0,0,0,0,0,0,0,0.45,0.15,0.1,0.3),">=",0.75)
add.constraint(Food, c(1,1,1,0,0,0,0,0,0,0,0,0),"<=",10)
add.constraint(Food, c(0,0,0,1,1,1,0,0,0,0,0,0),"<=",5)
add.constraint(Food, c(0,0,0,0,0,0,1,1,1,0,0,0),"<=",2)
add.constraint(Food, c(0,0,0,0,0,0,0,0,0,1,1,1),"<=",2)
RowNames <- c("Constraint 1", "Constraint 2", "Constraint 3","4","5","6","7")
ColNames <- c("x11","x21","x31","x41","x12","x22","x32","x42","x13","x23","x33","x43")
dimnames(Food) <- list(RowNames, ColNames)
solve(Food)

Food

get.objective(Food)

get.variables(Food)

get.constraints(Food) 



#QUESTION 3
############################################
# MIXED STRATEGIES #
#############################################

# Player Alice  ¯s game #

library(lpSolveAPI)

lprec <- make.lp(0, 6)

lp.control(lprec, sense= "maximize")  



set.objfn(lprec, c(0, 0, 0,0,0, 1))

add.constraint(lprec, c(1,0,0,0,1, 1), "<=", 0)

add.constraint(lprec, c(1,1,0,1,1, 1), "<=", 0)

add.constraint(lprec, c(0,1,2,1,0, 1), "<=", 0)

add.constraint(lprec, c(0,1,2,1,0, 1), "<=", 0)

add.constraint(lprec, c(1,1,0,1,1, 1), "<=", 0)

add.constraint(lprec, c(1,0,0,0,1, 1), "<=", 0)

add.constraint(lprec, c(1,1,1,1,1,0), "=", 1)

set.bounds(lprec, lower = c(0, 0, 0, 0, 0, -Inf))

RowNames <- c("Row1", "Row2", "Row3","Row4","Row5","Row6","Row7")

ColNames <- c("x1", "x2", "x3","x4","x5", "v")

dimnames(lprec) <- list(RowNames, ColNames)



solve(lprec) 

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)


lprec

#############################################

# Player John's¯s game #

lprec <- make.lp(0, 7)

lp.control(lprec, sense= "minimize") 



set.objfn(lprec, c(0, 0, 0,0,0,0, 1))

add.constraint(lprec, c(1,1,0,0,1,1, 1), ">=", 0)

add.constraint(lprec, c(0,1,1,1,1,0, 1), ">=", 0)

add.constraint(lprec, c(0,0,2,2,0,0, 1), ">=", 0)

add.constraint(lprec, c(00,1,1,1,1,0, 1), ">=", 0)

add.constraint(lprec, c(01,1,0,0,1,1, 1), ">=", 0)

add.constraint(lprec, c(1,1,1,1,1,1,0), "=", 1)

set.bounds(lprec, lower = c(0, 0, 0,0,0,0, -Inf))

RowNames <- c("Row1", "Row2", "Row3","Row4","Row5","Row6")

ColNames <- c("y1", "y2", "y3","y4","y5","y6","v")

dimnames(lprec) <- list(RowNames, ColNames)



solve(lprec) 
get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)


lprec