data = readmatrix("CoinTossQ5to7RawData.csv");

numOfColm = 3;
Tossers = 52;
colIndex = 1;
increment = 0; %variable to keep track of the increment of values from q5 to q6, and to q7.
while colIndex <= numOfColm
    columnData = data(:, colIndex); % gets values of each column   
    values = 0:1:(10+increment);
    counts = sum (columnData == values);
    
    subplot(3, 1, colIndex); % plots each column
    stem (values/(10+increment), counts/Tossers);
    xlabel('Estimated Pr[Head] from ' + string(4+colIndex) + ' Toss Data'), ylabel('Rel Frequency'), title('Q' + string(4+colIndex) + ' Results by Relative Frequency for Number of Heads');
    colIndex = colIndex +1;
    increment = increment + 5;
end