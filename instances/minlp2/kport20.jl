using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62]
@variable(m, x[x_Idx])
b_Idx = Any[63, 64]
@variable(m, b[b_Idx])
i_Idx = Any[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102]
@variable(m, i[i_Idx])
setcategory(i[68], :Int)
setlowerbound(x[62], 0.0)
setcategory(i[91], :Int)
setcategory(i[100], :Int)
setcategory(i[84], :Int)
setcategory(i[86], :Int)
setcategory(i[74], :Int)
setlowerbound(x[56], 0.0)
setlowerbound(x[59], 0.0)
setcategory(i[93], :Int)
setcategory(i[75], :Int)
setcategory(i[76], :Int)
setcategory(b[64], :Bin)
setcategory(i[77], :Int)
setlowerbound(x[54], 0.0)
setcategory(i[73], :Int)
setlowerbound(x[58], 0.0)
setcategory(i[72], :Int)
setcategory(i[94], :Int)
setlowerbound(x[53], 0.0)
setcategory(i[95], :Int)
setcategory(i[78], :Int)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setcategory(i[80], :Int)
setcategory(i[82], :Int)
setcategory(i[89], :Int)
setcategory(i[92], :Int)
setcategory(i[66], :Int)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setcategory(i[97], :Int)
setcategory(i[85], :Int)
setcategory(i[90], :Int)
setcategory(i[101], :Int)
setlowerbound(x[45], 0.0)
setcategory(i[83], :Int)
setcategory(i[79], :Int)
setcategory(i[81], :Int)
setcategory(i[65], :Int)
setcategory(i[96], :Int)
setlowerbound(x[44], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[47], 0.0)
setcategory(i[88], :Int)
setlowerbound(x[60], 0.0)
setcategory(i[71], :Int)
setlowerbound(x[51], 0.0)
setlowerbound(x[46], 0.0)
setcategory(i[69], :Int)
setcategory(i[67], :Int)
setcategory(i[99], :Int)
setlowerbound(x[48], 0.0)
setcategory(i[102], :Int)
setcategory(i[70], :Int)
setcategory(i[87], :Int)
setcategory(b[63], :Bin)
setcategory(i[98], :Int)
setlowerbound(x[4], 0.4)
setupperbound(x[4], 1.0)
setlowerbound(x[5], 0.4)
setupperbound(x[5], 1.0)
setlowerbound(x[6], 0.4)
setupperbound(x[6], 1.0)
setlowerbound(x[7], 0.4)
setupperbound(x[7], 1.0)
setlowerbound(x[8], 0.4)
setupperbound(x[8], 1.0)
setlowerbound(x[9], 0.4)
setupperbound(x[9], 1.0)
setlowerbound(x[10], 0.4)
setupperbound(x[10], 1.0)
setlowerbound(x[11], 0.4)
setupperbound(x[11], 1.0)
setlowerbound(x[12], 0.4)
setupperbound(x[12], 1.0)
setlowerbound(x[13], 0.4)
setupperbound(x[13], 1.0)
setlowerbound(x[14], 0.4)
setupperbound(x[14], 1.0)
setlowerbound(x[15], 0.4)
setupperbound(x[15], 1.0)
setlowerbound(x[16], 0.4)
setupperbound(x[16], 1.0)
setlowerbound(x[17], 0.4)
setupperbound(x[17], 1.0)
setlowerbound(x[18], 0.4)
setupperbound(x[18], 1.0)
setlowerbound(x[19], 0.4)
setupperbound(x[19], 1.0)
setlowerbound(x[20], 0.4)
setupperbound(x[20], 1.0)
setlowerbound(x[21], 0.4)
setupperbound(x[21], 1.0)
setlowerbound(x[22], 0.4)
setupperbound(x[22], 1.0)
setlowerbound(x[23], 0.4)
setupperbound(x[23], 1.0)
setlowerbound(x[24], 0.4)
setupperbound(x[24], 1.0)
setlowerbound(x[25], 0.4)
setupperbound(x[25], 1.0)
setlowerbound(x[26], 0.4)
setupperbound(x[26], 1.0)
setlowerbound(x[27], 0.4)
setupperbound(x[27], 1.0)
setlowerbound(x[28], 0.4)
setupperbound(x[28], 1.0)
setlowerbound(x[29], 0.4)
setupperbound(x[29], 1.0)
setlowerbound(x[30], 0.4)
setupperbound(x[30], 1.0)
setlowerbound(x[31], 0.4)
setupperbound(x[31], 1.0)
setlowerbound(x[32], 0.4)
setupperbound(x[32], 1.0)
setlowerbound(x[33], 0.4)
setupperbound(x[33], 1.0)
setlowerbound(x[34], 0.4)
setupperbound(x[34], 1.0)
setlowerbound(x[35], 0.4)
setupperbound(x[35], 1.0)
setlowerbound(x[36], 0.4)
setupperbound(x[36], 1.0)
setlowerbound(x[37], 0.4)
setupperbound(x[37], 1.0)
setlowerbound(x[38], 0.4)
setupperbound(x[38], 1.0)
setlowerbound(x[39], 0.4)
setupperbound(x[39], 1.0)
setlowerbound(x[40], 0.4)
setupperbound(x[40], 1.0)
setlowerbound(x[41], 0.4)
setupperbound(x[41], 1.0)
setlowerbound(x[42], 102.14)
setlowerbound(x[43], 176.07)
setupperbound(x[44], 1.0)
setupperbound(x[45], 1.0)
setupperbound(x[46], 1.0)
setupperbound(x[47], 1.0)
setupperbound(x[48], 1.0)
setupperbound(x[49], 1.0)
setupperbound(x[50], 1.0)
setupperbound(x[51], 1.0)
setupperbound(x[52], 1.0)
setupperbound(x[53], 1.0)
setupperbound(x[54], 1.0)
setupperbound(x[55], 1.0)
setupperbound(x[56], 1.0)
setupperbound(x[57], 1.0)
setupperbound(x[58], 1.0)
setupperbound(x[59], 1.0)
setupperbound(x[60], 1.0)
setupperbound(x[61], 1.0)
setupperbound(x[62], 1.0)
setupperbound(i[65], 28.0)
setupperbound(i[66], 28.0)
setupperbound(i[67], 28.0)
setupperbound(i[68], 25.0)
setupperbound(i[69], 25.0)
setupperbound(i[70], 13.0)
setupperbound(i[71], 12.0)
setupperbound(i[72], 11.0)
setupperbound(i[73], 7.0)
setupperbound(i[74], 4.0)
setupperbound(i[75], 3.0)
setupperbound(i[76], 19.0)
setupperbound(i[77], 12.0)
setupperbound(i[78], 7.0)
setupperbound(i[79], 4.0)
setupperbound(i[80], 3.0)
setupperbound(i[81], 2.0)
setupperbound(i[82], 2.0)
setupperbound(i[83], 2.0)
setupperbound(i[84], 28.0)
setupperbound(i[85], 28.0)
setupperbound(i[86], 28.0)
setupperbound(i[87], 15.0)
setupperbound(i[88], 15.0)
setupperbound(i[89], 7.0)
setupperbound(i[90], 7.0)
setupperbound(i[91], 6.0)
setupperbound(i[92], 4.0)
setupperbound(i[93], 2.0)
setupperbound(i[94], 1.0)
setupperbound(i[95], 11.0)
setupperbound(i[96], 7.0)
setupperbound(i[97], 4.0)
setupperbound(i[98], 2.0)
setupperbound(i[99], 1.0)
setupperbound(i[100], 1.0)
setupperbound(i[101], 1.0)
setupperbound(i[102], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[2]-x[3] == 0.0)
@constraint(m, e2, x[3]-2.45*b[63]-2.45*b[64] == 0.0)
@NLconstraint(m, e3, -(0.98488578017961*x[42]^0.5+0.98488578017961*x[43]^0.5)+x[2] == 0.0)
@constraint(m, e4, -168*b[63]+6*i[65]+6*i[66]+6*i[67]+6*i[68]+6*i[69]+6*i[70]+6*i[71]+6*i[72]+6*i[73]+6*i[74]+6*i[75]+6*i[76]+6*i[77]+6*i[78]+6*i[79]+6*i[80]+6*i[81]+6*i[82]+6*i[83] <= 0.0)
@constraint(m, e5, -168*b[64]+6*i[84]+6*i[85]+6*i[86]+6*i[87]+6*i[88]+6*i[89]+6*i[90]+6*i[91]+6*i[92]+6*i[93]+6*i[94]+6*i[95]+6*i[96]+6*i[97]+6*i[98]+6*i[99]+6*i[100]+6*i[101]+6*i[102] <= 0.0)
@NLconstraint(m, e6, -0.000384615384615385*(i[65]*x[4]*x[42]+i[84]*x[23]*x[43])+x[44] == -1.0)
@NLconstraint(m, e7, -0.000434782608695652*(i[66]*x[5]*x[42]+i[85]*x[24]*x[43])+x[45] == -1.0)
@NLconstraint(m, e8, -0.000588235294117647*(i[67]*x[6]*x[42]+i[86]*x[25]*x[43])+x[46] == -1.0)
@NLconstraint(m, e9, -0.00188679245283019*(i[68]*x[7]*x[42]+i[87]*x[26]*x[43])+x[47] == -1.0)
@NLconstraint(m, e10, -0.00188679245283019*(i[69]*x[8]*x[42]+i[88]*x[27]*x[43])+x[48] == -1.0)
@NLconstraint(m, e11, -0.00357142857142857*(i[70]*x[9]*x[42]+i[89]*x[28]*x[43])+x[49] == -1.0)
@NLconstraint(m, e12, -0.004*(i[71]*x[10]*x[42]+i[90]*x[29]*x[43])+x[50] == -1.0)
@NLconstraint(m, e13, -0.00434782608695652*(i[72]*x[11]*x[42]+i[91]*x[30]*x[43])+x[51] == -1.0)
@NLconstraint(m, e14, -0.00625*(i[73]*x[12]*x[42]+i[92]*x[31]*x[43])+x[52] == -1.0)
@NLconstraint(m, e15, -0.0111111111111111*(i[74]*x[13]*x[42]+i[93]*x[32]*x[43])+x[53] == -1.0)
@NLconstraint(m, e16, -0.0142857142857143*(i[75]*x[14]*x[42]+i[94]*x[33]*x[43])+x[54] == -1.0)
@NLconstraint(m, e17, -0.00256410256410256*(i[76]*x[15]*x[42]+i[95]*x[34]*x[43])+x[55] == -1.0)
@NLconstraint(m, e18, -0.004*(i[77]*x[16]*x[42]+i[96]*x[35]*x[43])+x[56] == -1.0)
@NLconstraint(m, e19, -0.00625*(i[78]*x[17]*x[42]+i[97]*x[36]*x[43])+x[57] == -1.0)
@NLconstraint(m, e20, -0.01*(i[79]*x[18]*x[42]+i[98]*x[37]*x[43])+x[58] == -1.0)
@NLconstraint(m, e21, -0.0142857142857143*(i[80]*x[19]*x[42]+i[99]*x[38]*x[43])+x[59] == -1.0)
@NLconstraint(m, e22, -0.02*(i[81]*x[20]*x[42]+i[100]*x[39]*x[43])+x[60] == -1.0)
@NLconstraint(m, e23, -0.02*(i[82]*x[21]*x[42]+i[101]*x[40]*x[43])+x[61] == -1.0)
@NLconstraint(m, e24, -0.02*(i[83]*x[22]*x[42]+i[102]*x[41]*x[43])+x[62] == -1.0)
@constraint(m, e25, x[42]-102.14*b[63] >= 0.0)
@constraint(m, e26, x[43]-176.07*b[64] >= 0.0)
@constraint(m, e27, x[42]-250*b[63] <= 0.0)
@constraint(m, e28, x[43]-250*b[64] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
