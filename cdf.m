No_tosses = input('No of tosses : ');
No_coins = input('No of coins tossed at a time : ');
Tail = 1;
Head = 2;
Total_outcome = randi([Tail Head],No_tosses,No_coins);
head = zeros(No_coins+2,1)*0;
CDF = zeros(No_coins+1,1)*0;
k ;
i ;
for k = 1:No_tosses
heads = 0;
for i = 1:No_coins
if(Total_outcome(k,i) == 2)
heads = heads + 1;
end
end
head(heads+1,1) = head(heads+1,1) + 1;
end
for i = 1:No_coins+1
for v = 1:i
disp(v);
CDF(i,1) = CDF(i,1) + head(v,1)/No_tosses;
end
end
plot(CDF)
