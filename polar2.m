%output polarization angle
A = [110,102,90,78,66,58,49,38,29,21,10,0,-10,-19,-31,-44,-54,-61,-69];
%HWP angle
C = linspace(32,212,19);


hold on
title('Polarization Angle vs HWP Angle')
xlabel('HWP Angle (degrees)')
ylabel('Polarization Angle (degrees)')
plot(C,A,'b-o')


T_polar2 = table(A',C','VariableNames',({'Polarization_Angle','HWP_Angle'}));
writetable(T_polar2);