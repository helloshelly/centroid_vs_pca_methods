%compute the basis of each digit 0-9
basis_len = 28;
Us=zeros( 28*28, basis_len, 10);

tic;
for k=1:10
    % go through each digit 0 to 9
    s = strcat('train',num2str(k-1));
    A = double(eval(s));

    % and get first 5 singular vector of A transposed
	[U,~,~] = svds( A', basis_len );
    Us(:,:,k)=U;
end

time1 = toc;
disp(time1);
labels0 = pca(test0, Us);
results0 = sum(labels0 == 0);
success0 = results0 / size(test0, 1);
str0 = sprintf('Success rate for 0: %f', success0);
disp(str0);

labels1 = pca(test1, Us);
results1 = sum(labels1 == 1);
success1 = results1 / size(test1, 1);
str1 = sprintf('Success rate for 1: %f', success1);
disp(str1);

labels2 = pca(test2, Us);
results2 = sum(labels2 == 2);
success2 = results2 / size(test2, 1);
str2 = sprintf('Success rate for 2: %f', success2);
disp(str2);

labels3 = pca(test3, Us);
results3 = sum(labels3 == 3);
success3 = results3 / size(test3, 1);
str3 = sprintf('Success rate for 3: %f', success3);
disp(str3);

labels4 = pca(test4, Us);
results4 = sum(labels4 == 4);
success4 = results4 / size(test4, 1);
str4 = sprintf('Success rate for 4: %f', success4);
disp(str4);

labels5 = pca(test5, Us);
results5 = sum(labels5 == 5);
success5 = results5 / size(test5, 1);
str5 = sprintf('Success rate for 5: %f', success5);
disp(str5);

labels6 = pca(test6, Us);
results6 = sum(labels6 == 6);
success6 = results6 / size(test6, 1);
str6 = sprintf('Success rate for 6: %f', success6);
disp(str6);

labels7 = pca(test7, Us);
results7 = sum(labels7 == 7);
success7 = results7 / size(test7, 1);
str7 = sprintf('Success rate for 7: %f', success7);
disp(str7);

labels8 = pca(test8, Us);
results8 = sum(labels8 == 8);
success8 = results8 / size(test8, 1);
str8 = sprintf('Success rate for 8: %f', success8);
disp(str8);

labels9 = pca(test9, Us);
results9 = sum(labels9 == 9);
success9 = results9 / size(test9, 1);
str9 = sprintf('Success rate for 9: %f', success9);
disp(str9);
