clear
clc

%bentuk umum turunan polinom horner
%dp_i(x) = (n-i)*a_(n-i)+x*dp_(i-1)(x), i=1,2,...,(n-1), n=panjang polinom
%p(x) = 5+2*x+x^2
%dp(x) = 2+2*x

%%
%metode symbolic diff
% x = sym('x');
% p(x) = 5+2*x+x^2;
% dp(x) = diff(p(x));
% 
% dp(1);
% dp(100);

%%
% %horner untuk turunan
% %dp(x) = a_1+x(2a_2+x(3a_3+...+x((n-1)a_(n-1)+xna_n)))
% x = 100;
% a = [5 2 1];
% n = length(a); %panjang dari a
% npangkat = n-1; %karena length(a)=3 padahal derajat cuma 2
% dpx = npangkat * a(n); %ikut dengan teori, (dpx=na_n)
% 
% for i = 1:(npangkat-1), %ikut teori, i panjangnya 1...(n-1)
%     dpx = (npangkat-i)*a(n-i)+x*dpx; , %ikut teori
% end

%%
%apabila ingin dibandingkan dengan function yg telah dibuat
x = sym('x');
p(x) = 100+21*x+21*x^2+51*x^3
dp(x) = diff(p(x));

xinput = input('masukkan nilai x ')
ainput = input('masukkan nilai vektor+ [] ')

dp1 = dp(xinput)
dp2 = part2lanjutan(xinput,ainput)


