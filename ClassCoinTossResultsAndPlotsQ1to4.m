% ECE 5100 - Winter 2022

% Coin Toss Experiment
% Using Class Data for Questions 1-4 from D2L Survey

% Written by C. Moloney, Jan 2022 
%
close all
clear all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Data entered manually for Q1 - Q4
NumTossers = 52;
NumT = NumTossers;
Q1 = [27 25]; Q1NumH = 27 ;
Q2 = [ 13 13 13 13]; Q2seq = [ 'HH', 'HT', 'TH', 'TT'];
Q3 = [ 4 10 6 7 8 4 10 3 ]; Q3seq = [ 'HHH', 'HHT', 'HTH', 'HTT', 'THH', 'THT', 'TTH', 'TTT'];
Q4 = [ 1 6 16 20 8 1];

% figure % Q1-3 - raw data counts
% subplot(3,1,1), stem([1,0],Q1)
% xlabel('Heads = 1, Tails = 0'), ylabel('Counts'), title('Q1 Results by Counts')
% subplot(3,1,2), stem(3:-1:0,Q2)
% xlabel('HH=3, HT=2, TH=1, TT=0'), ylabel('Counts'), title('Q2 Results by Counts')
% subplot(3,1,3), stem(7:-1:0,Q3)
% xlabel('HHH=7, ... TTT=0'), ylabel('Counts'), title('Q3 Results by Counts')
% 
% figure % Q1-3 - counts of relative frequency estimated probabilities of outcomes
% subplot(3,1,1), stem([1,0],Q1/NumT)
% xlabel('Heads = 1, Tails = 0'), ylabel('Est. Prob'), title('Q1 Results by Relative Frequency Probabilities')
% subplot(3,1,2), stem(3:-1:0,Q2/NumT)
% xlabel('HH=3, HT=2, TH=1, TT=0'), ylabel('Est. Prob'), title('Q2 Results by Relative Frequency Probabilities')
% subplot(3,1,3), stem(7:-1:0,Q3/NumT)
% xlabel('HHH=7, ... TTT=0'), ylabel('Est. Prob'), title('Q3 Results by Relative Frequency Probabilities')

figure % Q4
subplot(3,1,1), stem([0,1,2,3,4,5],Q4)
xlabel('Num Heads'), ylabel('Count'), title('Q4 Results by Counts')
subplot(3,1,2), stem([0,1,2,3,4,5],Q4/NumT)
xlabel('Num Heads'), ylabel('Rel Freq'), title('Q4 Results by Relative Frequency for Num Heads')
subplot(3,1,3), stem([0,1,2,3,4,5]/5,Q4/NumT)
xlabel('Estimated Pr[Head] from 5-Toss Data'), ylabel('Rel Freq'), 
title('Q4 - Relative Frequencies for Est. Prob[Head], per individual 5-coin Tosses')

%% Calculate relative frequency estimates for Pr[Head] from data in Q1-3
disp(' ')
Np = 1;
SampleProbHead = Q1(1)/NumT; 
fprintf('Sample Prob[H] based on data with N= %3d tosses is %5.4f\n ',Np,SampleProbHead);
Np = 2 ;
TotalNumTosses = Np * NumTossers;
TotalNumHeads = Q2(1)*2 + (Q2(2)+Q2(3))*1 + Q2(4)*0; 
SampleProbHead = TotalNumHeads/TotalNumTosses;
fprintf('Sample Prob[H] based on data with N= %3d tosses is %5.4f\n ',Np,SampleProbHead);
Np = 3 ;
TotalNumTosses = Np * NumTossers;
TotalNumHeads = Q3(1)*3 + (Q3(2)+Q3(3)+Q3(5))*2 + (Q3(4)+Q3(6)+Q3(7))*1; 
SampleProbHead = TotalNumHeads/TotalNumTosses;
fprintf('Sample Prob[H] based on data with N= %3d tosses is %5.4f\n ',Np,SampleProbHead);

%% Calculate rel freq estimate for Pr[Head] from data in Q4 
Np = 5;
SampleProbHead = sum((Q4/NumT) .* ((0:1:Np)/Np ));
% disp(' ')
fprintf('Sample Prob[H] based on data with N= %3d tosses is %5.4f\n ',Np,SampleProbHead);

return

