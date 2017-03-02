function [table] = getarray( n ,i ,j )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a = n.ResultsDataSet.output;

b = cell2mat(a);

for p = 1 : i*j
    c(p) =b ((p-1)*6+1);
    c(p) = round(c(p));
end

table = c;
fid = fopen ('c:\users\ddk\documents\matlab\datasave.txt','wt');
for k=1:i
fprintf(fid,'{');
for l = 1:j
    fprintf(fid,'%d,',table(((k-1)*j)+l));
end
fprintf(fid,'},\n');
end
fprintf(fid,'};');
fclose(fid);