data = readmatrix("CoinTossQ5to7RawData.csv");

numOfColm = 3;
colIndex = 1;
increment = 0; %variable to keep track of the increment of values from q5 to q6, and to q7.
while colIndex <= numOfColm
     columnData = data(:, colIndex); % gets values of each column   
     values = 0:1:(10+increment);
     counts = sum (columnData == values);
    
     subplot(3, 1, colIndex); % plot for each column
     stem (values, counts);
     xlabel('Number of Heads'), ylabel('Count'), title('Q' + string(4+colIndex) + ' Results by Counts');
     colIndex = colIndex +1;
     increment = increment + 5;
end