using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setupperbound(x[1], 4.0)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, 2*x[1]+3*x[2] >= 9.0)
@constraint(m, e2, 3*x[1]-x[2] <= 8.0)
@constraint(m, e3, -x[1]+2*x[2] <= 8.0)
@constraint(m, e4, x[1]+2*x[2] <= 12.0)
@NLconstraint(m, e5, -((5+x[1]-x[2])*(x[1]+x[2]-1)+x[1])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 