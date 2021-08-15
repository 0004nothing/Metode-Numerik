function px = part1lanjutan(x,a)
n = length(a);
px = a(n);

for i = 1:n-1
    px = a(n-i)+x*px;
end


%tinggal definisikan x dan a di command window lalu ketik nama fungsi
%diatas maka akan muncul nilai yang sama seperti dalam metode sebelummnya