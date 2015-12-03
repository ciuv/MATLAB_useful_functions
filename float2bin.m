function res = float2bin( n,m, f_num )

res = '';
integ = fix(f_num); 
fract = abs(f_num - integ);
bin_integ = dec2bin(integ,n);
res = strcat(res,bin_integ,',');
temp = fract;
for i = 1:1:m
    temp  = mod(2* temp,2);
    res = strcat(res, num2str(fix(temp)));
    if temp >1
        temp = temp - 1;
    end    
end

end
