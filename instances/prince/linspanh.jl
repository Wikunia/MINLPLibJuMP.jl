using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97]
@variable(m, x[x_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[1], 77.0)
setupperbound(x[1], 77.01)
setlowerbound(x[2], 1124.52)
setupperbound(x[2], 1124.53)
setlowerbound(x[3], 158.0)
setupperbound(x[3], 158.01)
setlowerbound(x[4], 16.0)
setupperbound(x[4], 16.01)
setlowerbound(x[5], 0.0)
setupperbound(x[5], 0.0)
setlowerbound(x[6], 783.65)
setupperbound(x[6], 783.66)
setlowerbound(x[7], 11.0)
setupperbound(x[7], 11.01)
setlowerbound(x[8], 49.0)
setupperbound(x[8], 49.01)
setlowerbound(x[9], 2155.17)
setupperbound(x[9], 2155.18)
setlowerbound(x[10], 252.0)
setupperbound(x[10], 252.01)
setupperbound(x[11], 397.84)
setupperbound(x[12], 222.32)
setupperbound(x[13], 205.63)
setupperbound(x[14], 205.63)
setupperbound(x[15], 205.63)
setupperbound(x[16], 124.83)
setupperbound(x[17], 127.01)
setupperbound(x[18], 61.08)
setupperbound(x[19], 614.84)
setupperbound(x[20], 778.08)
setupperbound(x[21], 3024.0)
setupperbound(x[22], 3024.0)
setupperbound(x[23], 3024.0)
setupperbound(x[24], 3024.0)
setupperbound(x[25], 7257.6)
setupperbound(x[26], 1209.6)
setupperbound(x[27], 907.2)
setupperbound(x[28], 7257.6)
setupperbound(x[29], 7257.6)
setlowerbound(x[30], 77.0)
setupperbound(x[30], 77.0)
setlowerbound(x[31], 403.4)
setupperbound(x[31], 1312.0)
setlowerbound(x[32], 158.0)
setupperbound(x[32], 158.0)
setlowerbound(x[33], 16.0)
setupperbound(x[33], 16.0)
setlowerbound(x[34], 0.0)
setupperbound(x[34], 0.0)
setlowerbound(x[35], 502.0)
setupperbound(x[35], 928.46)
setlowerbound(x[36], 11.0)
setupperbound(x[36], 11.0)
setlowerbound(x[37], 49.0)
setupperbound(x[37], 49.0)
setlowerbound(x[38], 915.3)
setupperbound(x[38], 2611.6)
setlowerbound(x[39], 252.0)
setupperbound(x[39], 252.0)
setupperbound(x[40], 397.84)
setupperbound(x[41], 222.32)
setupperbound(x[42], 205.63)
setupperbound(x[43], 205.63)
setupperbound(x[44], 205.63)
setupperbound(x[45], 124.83)
setupperbound(x[46], 127.01)
setupperbound(x[47], 61.08)
setupperbound(x[48], 614.84)
setupperbound(x[49], 778.08)
setupperbound(x[50], 3024.0)
setupperbound(x[51], 3024.0)
setupperbound(x[52], 3024.0)
setupperbound(x[53], 3024.0)
setupperbound(x[54], 7257.6)
setupperbound(x[55], 1209.6)
setupperbound(x[56], 907.2)
setupperbound(x[57], 7257.6)
setupperbound(x[58], 7257.6)
setlowerbound(x[59], 77.0)
setupperbound(x[59], 77.0)
setlowerbound(x[60], 403.4)
setupperbound(x[60], 1312.0)
setlowerbound(x[61], 158.0)
setupperbound(x[61], 158.0)
setlowerbound(x[62], 16.0)
setupperbound(x[62], 16.0)
setlowerbound(x[63], 0.0)
setupperbound(x[63], 0.0)
setlowerbound(x[64], 505.64)
setupperbound(x[64], 928.46)
setlowerbound(x[65], 11.0)
setupperbound(x[65], 11.0)
setlowerbound(x[66], 49.0)
setupperbound(x[66], 49.0)
setlowerbound(x[67], 915.3)
setupperbound(x[67], 2611.6)
setlowerbound(x[68], 252.0)
setupperbound(x[68], 252.0)
setupperbound(x[69], 397.84)
setupperbound(x[70], 222.32)
setupperbound(x[71], 205.63)
setupperbound(x[72], 205.63)
setupperbound(x[73], 205.63)
setupperbound(x[74], 124.83)
setupperbound(x[75], 127.01)
setupperbound(x[76], 61.08)
setupperbound(x[77], 614.84)
setupperbound(x[78], 778.08)
setupperbound(x[79], 3024.0)
setupperbound(x[80], 3024.0)
setupperbound(x[81], 3024.0)
setupperbound(x[82], 3024.0)
setupperbound(x[83], 7257.6)
setupperbound(x[84], 1209.6)
setupperbound(x[85], 907.2)
setupperbound(x[86], 7257.6)
setupperbound(x[87], 7257.6)
setlowerbound(x[88], 77.0)
setupperbound(x[88], 77.01)
setlowerbound(x[89], 1100.0)
setupperbound(x[89], 1100.01)
setlowerbound(x[90], 158.0)
setupperbound(x[90], 158.01)
setlowerbound(x[91], 16.0)
setupperbound(x[91], 16.01)
setlowerbound(x[92], 0.0)
setupperbound(x[92], 0.0)
setlowerbound(x[93], 700.0)
setupperbound(x[93], 700.01)
setlowerbound(x[94], 11.0)
setupperbound(x[94], 11.01)
setlowerbound(x[95], 49.0)
setupperbound(x[95], 49.01)
setlowerbound(x[96], 2000.0)
setupperbound(x[96], 2000.01)
setlowerbound(x[97], 252.0)
setupperbound(x[97], 252.01)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[11]-x[21]-x[30] == -51.38)
@constraint(m, e2, x[2]+x[11]-x[12]+x[21]-x[22]-x[31] == -13.84)
@constraint(m, e3, x[3]+x[12]-x[13]+x[22]-x[23]-x[32] == -2.58)
@constraint(m, e4, x[4]-x[14]-x[24]-x[33] == -21.91)
@constraint(m, e5, x[5]+x[13]+x[14]-x[15]-x[34] == 0.0)
@constraint(m, e6, x[6]-x[16]-x[25]-x[35] == -12.97)
@constraint(m, e7, x[7]+x[16]-x[17]+x[25]-x[26]-x[36] == 0.0)
@constraint(m, e8, x[8]+x[17]-x[18]+x[26]-x[27]-x[37] == -2.89)
@constraint(m, e9, x[9]+x[15]+x[18]-x[19]+x[23]+x[24]+x[27]-x[28]-x[38] == -20.84)
@constraint(m, e10, x[10]+x[19]-x[20]+x[28]-x[29]-x[39] == -17.14)
@constraint(m, e11, x[30]-x[40]-x[50]-x[59] == -32.06)
@constraint(m, e12, x[31]+x[40]-x[41]+x[50]-x[51]-x[60] == -0.28)
@constraint(m, e13, x[32]+x[41]-x[42]+x[51]-x[52]-x[61] == -4.2)
@constraint(m, e14, x[33]-x[43]-x[53]-x[62] == -48.37)
@constraint(m, e15, x[34]+x[42]+x[43]-x[44]-x[63] == 0.0)
@constraint(m, e16, x[35]-x[45]-x[54]-x[64] == -18.13)
@constraint(m, e17, x[36]+x[45]-x[46]+x[54]-x[55]-x[65] == 0.0)
@constraint(m, e18, x[37]+x[46]-x[47]+x[55]-x[56]-x[66] == 1.61)
@constraint(m, e19, x[38]+x[44]+x[47]-x[48]+x[52]+x[53]+x[56]-x[57]-x[67] == -26.6)
@constraint(m, e20, x[39]+x[48]-x[49]+x[57]-x[58]-x[68] == -18.76)
@constraint(m, e21, x[59]-x[69]-x[79]-x[88] == -18.13)
@constraint(m, e22, x[60]+x[69]-x[70]+x[79]-x[80]-x[89] == 0.0)
@constraint(m, e23, x[61]+x[70]-x[71]+x[80]-x[81]-x[90] == 0.0)
@constraint(m, e24, x[62]-x[72]-x[82]-x[91] == -18.13)
@constraint(m, e25, x[63]+x[71]+x[72]-x[73]-x[92] == 0.0)
@constraint(m, e26, x[64]-x[74]-x[83]-x[93] == -9.1)
@constraint(m, e27, x[65]+x[74]-x[75]+x[83]-x[84]-x[94] == 0.0)
@constraint(m, e28, x[66]+x[75]-x[76]+x[84]-x[85]-x[95] == 5.81)
@constraint(m, e29, x[67]+x[73]+x[76]-x[77]+x[81]+x[82]+x[85]-x[86]-x[96] == -9.1)
@constraint(m, e30, x[68]+x[77]-x[78]+x[86]-x[87]-x[97] == -6.02)
@constraint(m, e31, x[20]+x[29]+x[49]+x[58]+x[78]+x[87] == 608.35)
@constraint(m, e32, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10] == -4626.34)
@constraint(m, e33, x[88]+x[89]+x[90]+x[91]+x[92]+x[93]+x[94]+x[95]+x[96]+x[97] == 4363.0)
@constraint(m, e34, x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
