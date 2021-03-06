using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52]
@variable(m, x[x_Idx])
setlowerbound(x[1], -0.387)
setupperbound(x[1], 0.613)
setlowerbound(x[2], 1.351)
setupperbound(x[2], 2.351)
setlowerbound(x[3], -0.374)
setupperbound(x[3], 0.626)
setlowerbound(x[4], 1.354)
setupperbound(x[4], 2.354)
setlowerbound(x[5], -0.328)
setupperbound(x[5], 0.672)
setlowerbound(x[6], 1.349)
setupperbound(x[6], 2.349)
setlowerbound(x[7], -0.345)
setupperbound(x[7], 0.655)
setlowerbound(x[8], 1.315)
setupperbound(x[8], 2.315)
setlowerbound(x[9], -0.281)
setupperbound(x[9], 0.719)
setlowerbound(x[10], 1.328)
setupperbound(x[10], 2.328)
setlowerbound(x[11], -0.255)
setupperbound(x[11], 0.745)
setlowerbound(x[12], 1.347)
setupperbound(x[12], 2.347)
setlowerbound(x[13], -0.226)
setupperbound(x[13], 0.774)
setlowerbound(x[14], 1.304)
setupperbound(x[14], 2.304)
setlowerbound(x[15], -0.236)
setupperbound(x[15], 0.764)
setlowerbound(x[16], 1.332)
setupperbound(x[16], 2.332)
setlowerbound(x[17], -0.188)
setupperbound(x[17], 0.812)
setlowerbound(x[18], 1.338)
setupperbound(x[18], 2.338)
setlowerbound(x[19], -0.176)
setupperbound(x[19], 0.824)
setlowerbound(x[20], 1.317)
setupperbound(x[20], 2.317)
setlowerbound(x[21], -0.167)
setupperbound(x[21], 0.833)
setlowerbound(x[22], 1.32)
setupperbound(x[22], 2.32)
setlowerbound(x[23], -0.101)
setupperbound(x[23], 0.899)
setlowerbound(x[24], 1.345)
setupperbound(x[24], 2.345)
setlowerbound(x[25], -0.083)
setupperbound(x[25], 0.917)
setlowerbound(x[26], 1.329)
setupperbound(x[26], 2.329)
setlowerbound(x[27], -0.081)
setupperbound(x[27], 0.919)
setlowerbound(x[28], 1.332)
setupperbound(x[28], 2.332)
setlowerbound(x[29], -0.061)
setupperbound(x[29], 0.939)
setlowerbound(x[30], 1.32)
setupperbound(x[30], 2.32)
setlowerbound(x[31], -0.025)
setupperbound(x[31], 0.975)
setlowerbound(x[32], 1.32)
setupperbound(x[32], 2.32)
setlowerbound(x[33], 0.00600000000000001)
setupperbound(x[33], 1.006)
setlowerbound(x[34], 1.299)
setupperbound(x[34], 2.299)
setlowerbound(x[35], 0.038)
setupperbound(x[35], 1.038)
setlowerbound(x[36], 1.338)
setupperbound(x[36], 2.338)
setlowerbound(x[37], 0.038)
setupperbound(x[37], 1.038)
setlowerbound(x[38], 1.335)
setupperbound(x[38], 2.335)
setlowerbound(x[39], 0.091)
setupperbound(x[39], 1.091)
setlowerbound(x[40], 1.311)
setupperbound(x[40], 2.311)
setlowerbound(x[41], 0.078)
setupperbound(x[41], 1.078)
setlowerbound(x[42], 1.294)
setupperbound(x[42], 2.294)
setlowerbound(x[43], 0.126)
setupperbound(x[43], 1.126)
setlowerbound(x[44], 1.325)
setupperbound(x[44], 2.325)
setlowerbound(x[45], 0.159)
setupperbound(x[45], 1.159)
setlowerbound(x[46], 1.301)
setupperbound(x[46], 2.301)
setlowerbound(x[47], 0.168)
setupperbound(x[47], 1.168)
setlowerbound(x[48], 1.31)
setupperbound(x[48], 2.31)
setlowerbound(x[49], 0.187)
setupperbound(x[49], 1.187)
setlowerbound(x[50], 1.302)
setupperbound(x[50], 2.302)
setlowerbound(x[51], 1.0)
setupperbound(x[51], 10.0)
setlowerbound(x[52], 2.0)
setupperbound(x[52], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1]-0.113)^2+ (x[2]-1.851)^2+ (x[3]-0.126)^2+ (x[4]-1.854)^2+ (x[5]-0.172)^2+ (x[6]-1.849)^2+ (x[7]-0.155)^2+ (x[8]-1.815)^2+ (x[9]-0.219)^2+ (x[10]-1.828)^2+ (x[11]-0.245)^2+ (x[12]-1.847)^2+ (x[13]-0.274)^2+ (x[14]-1.804)^2+ (x[15]-0.264)^2+ (x[16]-1.832)^2+ (x[17]-0.312)^2+ (x[18]-1.838)^2+ (x[19]-0.324)^2+ (x[20]-1.817)^2+ (x[21]-0.333)^2+ (x[22]-1.82)^2+ (x[23]-0.399)^2+ (x[24]-1.845)^2+ (x[25]-0.417)^2+ (x[26]-1.829)^2+ (x[27]-0.419)^2+ (x[28]-1.832)^2+ (x[29]-0.439)^2+ (x[30]-1.82)^2+ (x[31]-0.475)^2+ (x[32]-1.82)^2+ (x[33]-0.506)^2+ (x[34]-1.799)^2+ (x[35]-0.538)^2+ (x[36]-1.838)^2+ (x[37]-0.538)^2+ (x[38]-1.835)^2+ (x[39]-0.591)^2+ (x[40]-1.811)^2+ (x[41]-0.578)^2+ (x[42]-1.794)^2+ (x[43]-0.626)^2+ (x[44]-1.825)^2+ (x[45]-0.659)^2+ (x[46]-1.801)^2+ (x[47]-0.668)^2+ (x[48]-1.81)^2+ (x[49]-0.687)^2+ (x[50]-1.802)^2)+objvar == 0.0)
@NLconstraint(m, e2, 1/(x[1]-x[52])-x[2]+x[51] == 0.0)
@NLconstraint(m, e3, 1/(x[3]-x[52])-x[4]+x[51] == 0.0)
@NLconstraint(m, e4, 1/(x[5]-x[52])-x[6]+x[51] == 0.0)
@NLconstraint(m, e5, 1/(x[7]-x[52])-x[8]+x[51] == 0.0)
@NLconstraint(m, e6, 1/(x[9]-x[52])-x[10]+x[51] == 0.0)
@NLconstraint(m, e7, 1/(x[11]-x[52])-x[12]+x[51] == 0.0)
@NLconstraint(m, e8, 1/(x[13]-x[52])-x[14]+x[51] == 0.0)
@NLconstraint(m, e9, 1/(x[15]-x[52])-x[16]+x[51] == 0.0)
@NLconstraint(m, e10, 1/(x[17]-x[52])-x[18]+x[51] == 0.0)
@NLconstraint(m, e11, 1/(x[19]-x[52])-x[20]+x[51] == 0.0)
@NLconstraint(m, e12, 1/(x[21]-x[52])-x[22]+x[51] == 0.0)
@NLconstraint(m, e13, 1/(x[23]-x[52])-x[24]+x[51] == 0.0)
@NLconstraint(m, e14, 1/(x[25]-x[52])-x[26]+x[51] == 0.0)
@NLconstraint(m, e15, 1/(x[27]-x[52])-x[28]+x[51] == 0.0)
@NLconstraint(m, e16, 1/(x[29]-x[52])-x[30]+x[51] == 0.0)
@NLconstraint(m, e17, 1/(x[31]-x[52])-x[32]+x[51] == 0.0)
@NLconstraint(m, e18, 1/(x[33]-x[52])-x[34]+x[51] == 0.0)
@NLconstraint(m, e19, 1/(x[35]-x[52])-x[36]+x[51] == 0.0)
@NLconstraint(m, e20, 1/(x[37]-x[52])-x[38]+x[51] == 0.0)
@NLconstraint(m, e21, 1/(x[39]-x[52])-x[40]+x[51] == 0.0)
@NLconstraint(m, e22, 1/(x[41]-x[52])-x[42]+x[51] == 0.0)
@NLconstraint(m, e23, 1/(x[43]-x[52])-x[44]+x[51] == 0.0)
@NLconstraint(m, e24, 1/(x[45]-x[52])-x[46]+x[51] == 0.0)
@NLconstraint(m, e25, 1/(x[47]-x[52])-x[48]+x[51] == 0.0)
@NLconstraint(m, e26, 1/(x[49]-x[52])-x[50]+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
