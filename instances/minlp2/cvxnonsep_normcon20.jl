using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setcategory(i[5], :Int)
setcategory(i[3], :Int)
setlowerbound(x[11], 0.0)
setcategory(i[2], :Int)
setlowerbound(x[12], 0.0)
setcategory(i[6], :Int)
setlowerbound(x[19], 0.0)
setcategory(i[4], :Int)
setcategory(i[9], :Int)
setlowerbound(x[20], 0.0)
setcategory(i[10], :Int)
setlowerbound(x[18], 0.0)
setlowerbound(x[15], 0.0)
setcategory(i[7], :Int)
setlowerbound(x[13], 0.0)
setcategory(i[1], :Int)
setupperbound(i[1], 5.0)
setupperbound(i[2], 5.0)
setupperbound(i[3], 5.0)
setupperbound(i[4], 5.0)
setupperbound(i[5], 5.0)
setupperbound(i[6], 5.0)
setupperbound(i[7], 5.0)
setupperbound(i[8], 5.0)
setupperbound(i[9], 5.0)
setupperbound(i[10], 5.0)
setupperbound(x[11], 5.0)
setupperbound(x[12], 5.0)
setupperbound(x[13], 5.0)
setupperbound(x[14], 5.0)
setupperbound(x[15], 5.0)
setupperbound(x[16], 5.0)
setupperbound(x[17], 5.0)
setupperbound(x[18], 5.0)
setupperbound(x[19], 5.0)
setupperbound(x[20], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt(0.0001+ (i[1])^2+ (i[2])^2+ (i[3])^2+ (i[4])^2+ (i[5])^2+ (i[6])^2+ (i[7])^2+ (i[8])^2+ (i[9])^2+ (i[10])^2+ (x[11])^2+ (x[12])^2+ (x[13])^2+ (x[14])^2+ (x[15])^2+ (x[16])^2+ (x[17])^2+ (x[18])^2+ (x[19])^2+ (x[20])^2) <= 10.0)
@constraint(m, e2, -0.175*i[1]-0.39*i[2]-0.83*i[3]-0.805*i[4]-0.06*i[5]-0.4*i[6]-0.52*i[7]-0.415*i[8]-0.655*i[9]-0.63*i[10]-0.29*x[11]-0.43*x[12]-0.015*x[13]-0.985*x[14]-0.165*x[15]-0.105*x[16]-0.37*x[17]-0.2*x[18]-0.49*x[19]-0.34*x[20]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
