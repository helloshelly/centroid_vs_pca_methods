whos('-file', 'mnistdata.mat');

%create T
T(1,:) = mean(train0);
T(2,:) = mean(train1);
T(3,:) = mean(train2);
T(4,:) = mean(train3);
T(5,:) = mean(train4);
T(6,:) = mean(train5);
T(7,:) = mean(train6);
T(8,:) = mean(train7);
T(9,:) = mean(train8);
T(10,:) = mean(train9);

labels0 = centroid(test0, T);
results0 = sum(labels0 == 0);
success0 = results0 / size(test0, 1);
str0 = sprintf('Success rate for 0: %f', success0);
disp(str0);

labels1 = centroid(test1, T);
results1 = sum(labels1 == 1);
success1 = results1 / size(test1, 1);
str1 = sprintf('Success rate for 1: %f', success1);
disp(str1);

labels2 = centroid(test2, T);
results2 = sum(labels2 == 2);
success2 = results2 / size(test2, 1);
str2 = sprintf('Success rate for 2: %f', success2);
disp(str2);

labels3 = centroid(test3, T);
results3 = sum(labels3 == 3);
success3 = results3 / size(test3, 1);
str3 = sprintf('Success rate for 3: %f', success3);
disp(str3);

labels4 = centroid(test4, T);
results4 = sum(labels4 == 4);
success4 = results4 / size(test4, 1);
str4 = sprintf('Success rate for 4: %f', success4);
disp(str4);

labels5 = centroid(test5, T);
results5 = sum(labels5 == 5);
success5 = results5 / size(test5, 1);
str5 = sprintf('Success rate for 5: %f', success5);
disp(str5);

labels6 = centroid(test6, T);
results6 = sum(labels6 == 6);
success6 = results6 / size(test6, 1);
str6 = sprintf('Success rate for 6: %f', success6);
disp(str6);

labels7 = centroid(test7, T);
results7 = sum(labels7 == 7);
success7 = results7 / size(test7, 1);
str7 = sprintf('Success rate for 7: %f', success7);
disp(str7);

labels8 = centroid(test8, T);
results8 = sum(labels8 == 8);
success8 = results8 / size(test8, 1);
str8 = sprintf('Success rate for 8: %f', success8);
disp(str8);

labels9 = centroid(test9, T);
results9 = sum(labels9 == 9);
success9 = results9 / size(test9, 1);
str9 = sprintf('Success rate for 9: %f', success9);
disp(str9);

plot(0, success0, 'go', 1, success1, 'go', 2, success2, 'go', 3, success3, 'go',...
    4, success4, 'go', 5, success5, 'go', 6, success6, 'go', 7, success7, 'go',...
    8, success8, 'go', 9, success9, 'go');
ylim([0 1]);