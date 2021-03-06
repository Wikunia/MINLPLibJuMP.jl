using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0)
setlowerbound(x[1], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.333333333333333* (1+x[1])^3-x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
