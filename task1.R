require(lpSolve)
objective.in  <- c(8,15)
const <- matrix(c(25,12,25,55,15,15,1,0,0,1), ncol=2, byrow=TRUE)
rhs <- c(1500,3120,840,15,0)
direction  <- c("<=","<=","<=",">=",">=")
optimum <-  lp("max",  objective.in, const, direction,  rhs,compute.sens = TRUE)
optimum$solution
optimum$objval

##
