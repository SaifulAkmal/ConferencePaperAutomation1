subplot(2,1,1)
title('test');
step(feedback(Plant*C1dofP,1),1)
hold on
step(feedback(Plant*C1dofPI,1),1)
hold on
step(feedback(Plant*C1dofPD,1),1)
hold on
step(feedback(Plant*C1dofPID,1),1)
hold on
grid
legend('P','PI','PD','PID')
title('1-DOF Controllers');

subplot(2,1,2)
C2dofPI = tf(C2dofPI);
CpiF = C2dofPI(1);
CpiB = C2dofPI(2);
step(CpiF*feedback(Plant,CpiB,1),1)
hold on
C2dofPD = tf(C2dofPD);
CpdF = C2dofPD(1);
CpdB = C2dofPD(2);
step(CpdF*feedback(Plant,CpdB,1),1)
hold on
C2dofPID = tf(C2dofPID);
CpidF = C2dofPID(1);
CpidB = C2dofPID(2);
step(CpidF*feedback(Plant,CpidB,1),1)
hold on
grid
legend('PI','PD','PID')
title('2-DOF Controllers');
