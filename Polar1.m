%A are the intensity measurements
A = [.5,2.1,6.8,13.7,22.1,31.4,40.3,47.4,51.9,53.7,52.1,47.7,40.4,31.4,21.9,13.9,6.2,1.9,.5];
%correcting for background noise
A_corrected = A-0.5;
%changing from column to row vector (inverse)
int = A_corrected';
%angle difference, from 38-218 degrees in increments of 10

C = linspace(90,270,19);
%Malus' Law
new_int =(64.1.*cosd(C).^2);

hold on
title('Intensity vs Angle Difference')
xlabel('Angle Difference (degrees)')
ylabel('Intensity (microwatts)')
plot(C,int)
plot(C,new_int)
legend('experimental data','malus law')

T_polar1 = table(int,new_int',C','VariableNames',({'Intensity_microwatts','Intensity_Calculated_Using_Malus_Law_microwatts','Angle_Difference_degrees'}));
writetable(T_polar1);