using JuMP

m = Model()

@variable(m, x[1:51])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setupperbound(x[1],1.0e6)
setupperbound(x[2],1.0e6)
setupperbound(x[3],1.0e6)
setupperbound(x[4],1.0e6)
setupperbound(x[5],1.0e6)
setupperbound(x[6],1.0e6)
setupperbound(x[7],1.0e6)
setupperbound(x[8],1.0e6)
setupperbound(x[9],1.0e6)
setupperbound(x[10],1.0e6)
setupperbound(x[11],1.0e6)
setupperbound(x[12],1.0e6)
setupperbound(x[13],1.0e6)
setupperbound(x[14],1.0e6)
setupperbound(x[15],1.0e6)
setupperbound(x[16],1.0e6)
setupperbound(x[17],1.0e6)
setupperbound(x[18],1.0e6)
setupperbound(x[19],1.0e6)
setupperbound(x[20],1.0e6)
setupperbound(x[21],1.0e6)
setupperbound(x[22],1.0e6)
setupperbound(x[23],1.0e6)
setupperbound(x[24],1.0e6)
setupperbound(x[25],1.0e6)
setupperbound(x[26],1.0e6)
setupperbound(x[27],1.0e6)
setupperbound(x[28],1.0e6)
setupperbound(x[29],1.0e6)
setupperbound(x[30],1.0e6)
setupperbound(x[31],1.0e6)
setupperbound(x[32],1.0e6)
setupperbound(x[33],1.0e6)
setupperbound(x[34],1.0e6)
setupperbound(x[35],1.0e6)
setupperbound(x[36],1.0e6)
setupperbound(x[37],1.0e6)
setupperbound(x[38],1.0e6)
setupperbound(x[39],1.0e6)
setupperbound(x[40],1.0e6)
setupperbound(x[41],1.0e6)
setupperbound(x[42],1.0e6)
setupperbound(x[43],1.0e6)
setupperbound(x[44],1.0e6)
setupperbound(x[45],1.0e6)
setupperbound(x[46],1.0e6)
setupperbound(x[47],1.0e6)
setupperbound(x[48],1.0e6)
setupperbound(x[49],1.0e6)
setupperbound(x[50],1.0e6)

@objective(m, Min, x[51])

# Non-Linear Constraints
@NLconstraint(m, e40,x[34]*x[36]-x[19]==0.0)
@NLconstraint(m, e41,x[34]*x[37]-x[20]==0.0)
@NLconstraint(m, e42,x[35]*x[38]-x[21]==0.0)
@NLconstraint(m, e43,x[35]*x[39]-x[22]==0.0)
@NLconstraint(m, e44,x[34]*x[43]-x[26]==0.0)
@NLconstraint(m, e45,x[35]*x[44]-x[27]==0.0)
@NLconstraint(m, e46,x[17]*x[36]-x[1]==0.0)
@NLconstraint(m, e47,x[17]*x[37]-x[2]==0.0)
@NLconstraint(m, e48,x[18]*x[38]-x[3]==0.0)
@NLconstraint(m, e49,x[18]*x[39]-x[4]==0.0)
@NLconstraint(m, e50,x[17]*x[43]-x[8]==0.0)
@NLconstraint(m, e51,x[18]*x[44]-x[9]==0.0)

@constraint(m, e1, -x[17]-x[18]+x[51]==0.0)
@constraint(m, e2, -x[5]-x[10]-x[11]==-20.0)
@constraint(m, e3, -x[6]-x[12]-x[13]==-30.0)
@constraint(m, e4, -x[7]-x[14]-x[15]==-50.0)
@constraint(m, e5, -x[1]-x[3]-x[10]-x[12]-x[14]+x[17]==0.0)
@constraint(m, e6, -x[2]-x[4]-x[11]-x[13]-x[15]+x[18]==0.0)
@constraint(m, e7, -x[1]-x[2]-x[8]+x[17]==0.0)
@constraint(m, e8, -x[3]-x[4]-x[9]+x[18]==0.0)
@constraint(m, e9, -x[5]-x[6]-x[7]-x[8]-x[9]+x[16]==0.0)
@constraint(m, e10, -x[23]-x[28]-x[29]==-16000.0)
@constraint(m, e11, -x[24]-x[30]-x[31]==-12000.0)
@constraint(m, e12, -x[25]-x[32]-x[33]==-10000.0)
@constraint(m, e13, -x[28]+16000*x[45]==0.0)
@constraint(m, e14, -x[29]+16000*x[46]==0.0)
@constraint(m, e15, -x[30]+12000*x[47]==0.0)
@constraint(m, e16, -x[31]+12000*x[48]==0.0)
@constraint(m, e17, -x[32]+10000*x[49]==0.0)
@constraint(m, e18, -x[33]+10000*x[50]==0.0)
@constraint(m, e19, -x[23]+16000*x[40]==0.0)
@constraint(m, e20, -x[24]+12000*x[41]==0.0)
@constraint(m, e21, -x[25]+10000*x[42]==0.0)
@constraint(m, e22, -x[10]+20*x[45]==0.0)
@constraint(m, e23, -x[11]+20*x[46]==0.0)
@constraint(m, e24, -x[12]+30*x[47]==0.0)
@constraint(m, e25, -x[13]+30*x[48]==0.0)
@constraint(m, e26, -x[14]+50*x[49]==0.0)
@constraint(m, e27, -x[15]+50*x[50]==0.0)
@constraint(m, e28, -x[5]+20*x[40]==0.0)
@constraint(m, e29, -x[6]+30*x[41]==0.0)
@constraint(m, e30, -x[7]+50*x[42]==0.0)
@constraint(m, e31, x[40]+x[45]+x[46]==1.0)
@constraint(m, e32, x[41]+x[47]+x[48]==1.0)
@constraint(m, e33, x[42]+x[49]+x[50]==1.0)
@constraint(m, e34, -600*x[17]+x[19]+x[21]+x[28]+x[30]+x[32]<=0.0)
@constraint(m, e35, -200*x[18]+x[20]+x[22]+x[29]+x[31]+x[33]<=0.0)
@constraint(m, e36, 0.1*x[19]+0.1*x[21]+0.1*x[28]+0.1*x[30]+0.1*x[32]-x[34]==0.0)
@constraint(m, e37, 0.01*x[20]+0.01*x[22]+0.01*x[29]+0.01*x[31]+0.01*x[33]-x[35]==0.0)
@constraint(m, e38, -x[19]-x[20]-x[26]+x[34]==0.0)
@constraint(m, e39, -x[21]-x[22]-x[27]+x[35]==0.0)
@constraint(m, e52, x[36]+x[37]+x[43]==1.0)
@constraint(m, e53, x[38]+x[39]+x[44]==1.0)
@constraint(m, e54, -30*x[16]+x[23]+x[24]+x[25]+x[26]+x[27]<=0.0)

m = m
