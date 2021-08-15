clear
clc

%%
%polinom symbolic sym
%p(x) = x^2+2*x+5

% x = 3;
% px = x^2+2*x+5
%hasil diatas akan ditampilkan secara langsung
%masalahnya akan sulit jika kita ingin substitusi nilai x untuk selanjutnya
%solusinya pakai symbolic sym

% x = sym('x');
% p(x) = x^2+2*x+5;
% %dengan cara diatas bisa ditampilkan langsung nilai dari
% p(1)
% p(2)
% p(100)
% %tanpa rempong

%apabila nilai koef dari fungsi diatas ingin diubah-ubah 
%bisa kita pakai cara horner

%%
%metode horner atau nested multiplication
%bentuk umum polinom horner
%p_i(x) = a_(n-i)+x*p_(i-1)(x), i=1,2,...,(n-1), n=panjang polinom
%p(x) = 5+2*x+x^2


% x = 3;
% a = [5 2 1]; %nilai koefisien
% n = length(a); %n adalah pangkat +1 (n=3 seharusnya pangkat tertinggi cuma 2
% px = a(n); %Ikut dengan teori, px adalah koef dengan pangkat tertinggi
% 
% %akan dibuat loop sesuai dengan algoritma penyelesaian metode horner
% %yaitu 5+x(2+x) hitung dalam kurung terlebih dahulu (lihat bentuk diatas)
% 
% for i = 1:n-1 %proses kerja hanya ada sampai n-1  
%     px = a(n-i)+x*px; 
%     %untuk x=3 apabila fungsi dijabarkan maka
%     %px = a(3-1)+xa(3)=a(2)+xa(3)
%     %untuk px selanjutnya
%     %px = a(3-2)+x(a(2)+xa(3))=a(1)+x(a(2)+xa(3))
% end
% px

%%
%contoh lain
%fungsi p(x) = 10+11x+12x^2+127x^3, p(129)

% x = 129;
% a = [10 11 12 127];
% n = length(a);
% px = a(n);
% 
% for i = 1:n-1
%     px = a(n-i)+x*px;
% end
% px


