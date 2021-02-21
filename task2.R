require(lpSolve)
objective.in  <- c(1,1.042,1.4705)
const <- matrix(c(0.8,0.6,0.45,0.1,0.25,0.15,0.05,0.05,0.10,0.05,0.10,0.30,1,0,0,0,1,0,0,0,1), ncol=3, byrow=TRUE)
rhs <- c(10000,5000,2000,2000,2000,1600,1500)
direction  <- c("<=","<=","<=","<=",">=",">=",">=")
optimum <-  lp("max",  objective.in, const, direction,  rhs,compute.sens = TRUE)
optimum$solution
optimum$objval
##
