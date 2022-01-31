data = readmatrix("CoinTossQ5to7RawData.csv");

numOfColm = 3;
colIndex = 1;
while colIndex <= 3
    columnData = data(:, colIndex); % gets values of each column
    avg = mean(columnData);
    variance = var (columnData);
    standardD = std (columnData);

    disp("average of column " + colIndex + " is: " + avg);
    disp("variance of column" + colIndex + " is: " + variance);
    disp("standard deviation of " + colIndex + " is: " + standardD);
    
    colIndex = colIndex +1;
    
end
subplot(3, 2,1);
stem ([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], data(:, 1));
stem (2, 3);
subplot(3, 2,2);
stem(2);
subplot(3, 2,3);
stem(3);



