clear
clc

%%
%incremental search(bracketing)
%f(i)*f(i+1)<0 atau ylama x ybaru <0
%y = x^2-4
x = linspace(-4,4,10); %semakin banyak nilai x maka semakin dekat ke solusi sebenarnya
plot(x,f(x),'k')
line([-4 4],[0 0],'linestyle','--'); %membuat garis vertikal
line([0 0],[-4 12],'linestyle','--'); %horizontal

hold on
for i = 2:length(x)
    xlama = x(i-1);
    xbaru = x(i);
    ylama = f(x(i-1));
    ybaru = f(x(i));
    
    plot(xbaru,ybaru,'*')   %akan ditampilkan animasi proses bracketing (tambahan sintaks hold dan pause)
    
    %mulai metode bracketing
    if ylama*ybaru<0;
        disp('ada akarnya')
        aproksimasi_akar = (xlama+xbaru)/2
    end
    pause(.5)
end
hold off

function y = f(x)
%     y = x.^2-4; %bisa diganti-ganti fungsinya
    y = sin(x); 
end