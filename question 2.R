library(lpSolveAPI)

Food <- make.lp(0, 12)

lp.control(Food, sense= "maximize")
set.objfn(Food, c(1195.8,1205.8,1185.8,1095.8,1047.4,1057.4,1037.4,947.4,1497,1507,1487,1397))
add.constraint(Food, c(0.8,0.1,0.05,0.05,0,0,0,0,0,0,0,0),">=",1)
add.constraint(Food, c(0,0,0,0,0.6,0.25,0.05,0.1,0,0,0,0),">=",0.8)
add.constraint(Food, c(0,0,0,0,0,0,0,0,0.45,0.15,0.1,0.3),">=",0.75)
add.constraint(Food, c(1,0,0,0,1,0,0,0,1,0,0,0),"<=",10)
add.constraint(Food, c(0,1,0,0,0,1,0,0,0,1,0,0),"<=",5)
add.constraint(Food, c(0,0,1,0,0,0,1,0,0,0,1,0),"<=",2)
add.constraint(Food, c(0,0,0,1,0,0,0,1,0,0,0,1),"<=",2)
RowNames <- c("Constraint 1", "Constraint 2", "Constraint 3","4","5","6","7")
ColNames <- c("x11","x21","x31","x41","x12","x22","x32","x42","x13","x23","x33","x43")
dimnames(Food) <- list(RowNames, ColNames)
solve(Food)

Food

get.objective(Food)

get.variables(Food)

get.constraints(Food) 


