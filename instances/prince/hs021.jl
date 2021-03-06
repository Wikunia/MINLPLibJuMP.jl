using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 2.0)
setupperbound(x[1], 50.0)
setlowerbound(x[2], -50.0)
setupperbound(x[2], 50.0)


# ----- Constraints ----- #
@constraint(m, e1, 10*x[1]-x[2] >= 10.0)
@NLconstraint(m, e2, -(0.01* (x[1])^2+ (x[2])^2)+objvar == -100.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
