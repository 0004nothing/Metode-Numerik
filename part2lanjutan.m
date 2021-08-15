function dpx = part2lanjutan(x,a)
n = length(a); %panjang dari a
npangkat = n-1; %karena length(a)=3 padahal derajat cuma 2
dpx = npangkat * a(n); %ikut dengan teori, (dpx=na_n)

for i = 1:(npangkat-1), %ikut teori, i panjangnya 1...(n-1)
    dpx = (npangkat-i)*a(n-i)+x*dpx; , %ikut teori
end
%cukup ketik dicommand window  
%x = 100;
% a = [5 2 1];
% part2lanjutan(x,a)