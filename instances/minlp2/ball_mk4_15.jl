using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setcategory(i[23], :Int)
setcategory(i[21], :Int)
setcategory(i[12], :Int)
setcategory(i[27], :Int)
setcategory(i[24], :Int)
setcategory(i[29], :Int)
setcategory(i[19], :Int)
setcategory(i[5], :Int)
setcategory(i[3], :Int)
setcategory(i[2], :Int)
setcategory(i[13], :Int)
setcategory(i[28], :Int)
setcategory(i[6], :Int)
setcategory(i[26], :Int)
setcategory(i[4], :Int)
setcategory(i[31], :Int)
setcategory(i[9], :Int)
setcategory(i[22], :Int)
setcategory(i[14], :Int)
setcategory(i[16], :Int)
setcategory(i[10], :Int)
setcategory(i[15], :Int)
setcategory(i[17], :Int)
setcategory(i[7], :Int)
setcategory(i[20], :Int)
setcategory(i[11], :Int)
setcategory(i[30], :Int)
setcategory(i[25], :Int)
setcategory(i[18], :Int)
setlowerbound(i[2], -100.0)
setlowerbound(i[3], -100.0)
setlowerbound(i[4], -100.0)
setlowerbound(i[5], -100.0)
setlowerbound(i[6], -100.0)
setlowerbound(i[7], -100.0)
setlowerbound(i[8], -100.0)
setlowerbound(i[9], -100.0)
setlowerbound(i[10], -100.0)
setlowerbound(i[11], -100.0)
setlowerbound(i[12], -100.0)
setlowerbound(i[13], -100.0)
setlowerbound(i[14], -100.0)
setlowerbound(i[15], -100.0)
setlowerbound(i[16], -100.0)
setlowerbound(i[17], -100.0)
setlowerbound(i[18], -100.0)
setlowerbound(i[19], -100.0)
setlowerbound(i[20], -100.0)
setlowerbound(i[21], -100.0)
setlowerbound(i[22], -100.0)
setlowerbound(i[23], -100.0)
setlowerbound(i[24], -100.0)
setlowerbound(i[25], -100.0)
setlowerbound(i[26], -100.0)
setlowerbound(i[27], -100.0)
setlowerbound(i[28], -100.0)
setlowerbound(i[29], -100.0)
setlowerbound(i[30], -100.0)
setlowerbound(i[31], -100.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-29*i[2]-28*i[3]-27*i[4]-26*i[5]-25*i[6]-24*i[7]-23*i[8]-22*i[9]-21*i[10]-20*i[11]-19*i[12]-18*i[13]-17*i[14]-16*i[15]-15*i[16]-14*i[17]-13*i[18]-12*i[19]-11*i[20]-10*i[21]-9*i[22]-8*i[23]-7*i[24]-6*i[25]-5*i[26]-4*i[27]-3*i[28]-2*i[29]-i[30]-30*i[31] == 0.0)
@NLconstraint(m, e2, 100* (i[30])^2-98*i[30]+100* (i[29])^2-98*i[29]+100* (i[28])^2-98*i[28]+100* (i[27])^2-98*i[27]+100* (i[26])^2-98*i[26]+100* (i[25])^2-98*i[25]+100* (i[24])^2-98*i[24]+100* (i[23])^2-98*i[23]+100* (i[22])^2-98*i[22]+100* (i[21])^2-98*i[21]+100* (i[20])^2-98*i[20]+100* (i[19])^2-98*i[19]+100* (i[18])^2-98*i[18]+100* (i[17])^2-98*i[17]+100* (i[16])^2-98*i[16]+100* (i[15])^2-98*i[15]+100* (i[14])^2-98*i[14]+100* (i[13])^2-98*i[13]+100* (i[12])^2-98*i[12]+100* (i[11])^2-98*i[11]+100* (i[10])^2-98*i[10]+100* (i[9])^2-98*i[9]+100* (i[8])^2-98*i[8]+100* (i[7])^2-98*i[7]+100* (i[6])^2-98*i[6]+100* (i[5])^2-98*i[5]+100* (i[4])^2-98*i[4]+100* (i[3])^2-98*i[3]+100* (i[2])^2-98*i[2]+100* (i[31])^2-98*i[31]-2*i[30]*i[29]-2*i[30]*i[29]-2*i[28]*i[27]-2*i[28]*i[27]-2*i[26]*i[25]-2*i[26]*i[25]-2*i[24]*i[23]-2*i[24]*i[23]-2*i[22]*i[21]-2*i[22]*i[21]-2*i[20]*i[19]-2*i[20]*i[19]-2*i[18]*i[17]-2*i[18]*i[17]-2*i[16]*i[15]-2*i[16]*i[15]-2*i[14]*i[13]-2*i[14]*i[13]-2*i[12]*i[11]-2*i[12]*i[11]-2*i[10]*i[9]-2*i[10]*i[9]-2*i[8]*i[7]-2*i[8]*i[7]-2*i[6]*i[5]-2*i[6]*i[5]-2*i[4]*i[3]-2*i[4]*i[3]-2*i[2]*i[31]-2*i[2]*i[31] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
