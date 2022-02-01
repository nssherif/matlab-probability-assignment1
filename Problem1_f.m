
data = readmatrix("CoinTossQ5to7RawData.csv");

DataQ5 = data(:, 1);
DataQ6 = data(:, 2);
DataQ7 = data(:, 3);

corCofQ5_Q6 = corrcoef(DataQ5, DataQ6);
corCofQ6_Q7 = corrcoef(DataQ6, DataQ7);
corCofQ5_Q7 = corrcoef(DataQ5, DataQ7);

 disp("Correlation Coefficient for Q5 and Q6 is " + corCofQ5_Q6(2)); % accessing the second element of the matrix
 disp("Correlation Coefficient for Q6 and Q7 is " + corCofQ6_Q7(2));
 disp("Correlation Coefficient for Q5 and Q7 is " + corCofQ5_Q7(2));