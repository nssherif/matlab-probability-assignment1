
data = readmatrix("CoinTossQ5to7RawData.csv");

numOfColm = 3;
Tossers = 52;
colIndex = 1;
increment = 0; %variable to keep track of the increment of values from q5 to q6, and to q7.
while colIndex <= numOfColm
    columnData = data(:, colIndex); % gets values of each column   
    values = 0:1:(10+increment);
    counts = sum (columnData == values);
    
    Tossers = 52;
    SampleProbHead = sum (columnData) ./ (Tossers * (10+increment));
    disp("Sample probability for Q" + string(4+colIndex) + " is:  " + SampleProbHead);
    colIndex = colIndex +1;
    increment = increment + 5;
end