using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[1], 2.5)
setupperbound(x[2], 4.1)
setlowerbound(x[5], 0.5)
setupperbound(x[5], 4.0)
setupperbound(x[8], 4.3)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5*( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2)+x[1]+2*x[5]-x[8])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
