clear all
clc 

SIZE = [50000,100000,500000,1000000];

h_value = zeros(4,1);
p_value = zeros(4,1);

for i=1:4
    d1 = sprintf('NREP%d.txt',SIZE(i));
    d2 = sprintf('NREPR%d.txt',SIZE(i));
   
    
    data1 = importdata(d1);
    data2 = importdata(d2);
    
    data_mean_1 = arrayfun(@(k) mean(data1(k:min(k+5, length(data1)))), 1:5:length(data1));
    data_mean_2 = arrayfun(@(k) mean(data2(k:min(k+5, length(data2)))), 1:5:length(data2));
    
    [h,p]=vartest2(data_mean_1,data_mean_2);
    if h ==1
        fprintf('non-homo');
        [h_t,p_t]=ttest2(data_mean_1,data_mean_2,'vartype','unequal');
        disp(p_t);
        h_value(i) = h_t;
        p_value(i) = p_t;
    else
        fprintf('homo');
        [h_t,p_t]=ttest2(data_mean_1,data_mean_2);
        disp(p_t);
        h_value(i) = h_t;
        p_value(i) = p_t;
    end
end


