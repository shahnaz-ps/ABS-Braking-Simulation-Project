%% parameters

mv = 1400;
jw = 0.01;
rw = 0.32;
v0 = 33.33;
Vmin = 1.5;
g = 9.8;
K = 1000;
T = 0.05;
Tbmax = 2000;

C1 = [1.1 0.86 0.2 0.15];
C2 = [24 33.82 94.13 100];
C3 = [0.52 0.35 0.066 0.05];
%% Q1

slip_x = [0:100];

for i = 1:length(C1)
     for j = 1:length(slip_x)
          miu_y(i,j) = C1(i)*(1-exp(-C2(i)*slip_x(j))-C3(i)*slip_x(j));
     end
     plot(slip_x , miu_y(i,:));
     grid on;
     hold on
end

title('Wheel Slip');
xlabel('Slip');
ylabel('Friction coefficient');
legend("Dry","Wet","Snow","Ice");


%% Dry & ABS=0

roadType=1;
ON = 0;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque without ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel Slip without ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction without ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed without ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance without ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Dry & ABS=1

roadType=1;
ON = 1;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque with ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel slip with ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction with ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed with ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance with ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Wet & ABS=0

roadType=2;
ON = 0;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque without ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel Slip without ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction without ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed without ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance without ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Wet & ABS=1

roadType=2;
ON = 1;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque with ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel slip with ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction with ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed with ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance with ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Snow & ABS=0

roadType=3;
ON = 0;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque without ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel Slip without ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction without ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed without ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance without ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Snow & ABS=1

roadType=3;
ON = 1;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque with ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel slip with ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction with ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed with ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance with ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Ice & ABS=0

roadType=4;
ON = 0;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque without ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel Slip without ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction without ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed without ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance without ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");

%% Ice & ABS=1

roadType=4;
ON = 1;

simOut = sim('C:\Users\Ali\Desktop\Shahnaz2_400100876\Sim2.slx','SimulationMode','normal','AbsTol','1e-5',...
                    'SaveState','on','StateSaveName','xoutNew',...
                      'SaveOutput','on','OutputSaveName','youtNew');

figure;
plot(simOut.Tb.time,simOut.Tb.Data);
grid on ;
title('Wheel braking torque with ABS');
xlabel('t(s)');
ylabel('torque');

figure;
plot(simOut.s.time,simOut.s.Data);
grid on ;
title('Wheel slip with ABS');
xlabel('t(s)');
ylabel('slip');

figure;
plot(simOut.mu.time,simOut.mu.Data);
grid on ;
title('Coefficient of friction with ABS');
xlabel('t(s)');
ylabel('Coefficient of friction ');

figure;
plot(simOut.vv.time,simOut.vv.Data);
hold on
plot(simOut.vw.time,simOut.vw.Data);
grid on ;
title('Wheel and Vehicle Speed with ABS');
xlabel('t(s)');
ylabel('Speed');
legend("Vehicle speed","Wheel speed");

figure;
plot(simOut.dv.time,simOut.dv.Data);
hold on
plot(simOut.dw.time,simOut.dw.Data);
grid on ;
title('Wheel and Vehicle Distance with ABS');
xlabel('t(s)');
ylabel('Distance');
legend("Vehicle distance","Wheel distance");