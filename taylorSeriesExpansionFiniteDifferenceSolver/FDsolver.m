function FDsolver(B,Bind,expPoints)

syms dlt T r
syms tx tx1 tx2 tx3 tx4 tx5 tx6 tx7 tx8 tx9 tx10 tx11 % derivatives wrt x, tx = t(expansion point)
syms t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 %expansion points

lhs = [t1; t2; t3; t4; t5; t6; t7; t8; t9; t10; t11];
t = [tx tx1 tx2 tx3 tx4 tx5 tx6 tx7 tx8 tx9 tx10 tx11];

%enter number of terms for the expansion - must be at least 1 longer than B matrix
term = 10;

n = 0;
for i = expPoints
    n = n+1;
    T(n,1) = t(1);

    for term = 2:term
        T(n,term) = i^(term-1)*dlt^(term-1)/factorial(term-1)*t(term);
        A(term-1,n) = i^(term-1)*dlt^(term-1)/factorial(term-1);
     end
end

%solve for chosed derivitives
%A*letter = b
cm = A(1:length(B),:)\B;
lhs = lhs(1:length(expPoints));
for i = 1:size(T,1)
    Tf(i,:) = T(i,:).*cm(i);
    lhsFinal(i) = lhs(i).*cm(i);
end
Tf = sum(Tf);
lhsFinal = sum(lhsFinal)- Tf(1);
rhs = sum(Tf(Bind+1));

%output results
fprintf(1,'the derivatitive approximated =\n')
rhs = simple(rhs);
pretty(rhs)
fprintf(1,'\nthe finite terms =\n')
lhsFinal = simple(lhsFinal);
pretty(lhsFinal)
fprintf(1,'\nthe largest term in the following matrix is the truncation error:\n')
Tf([1 (Bind+1)]) = 0;
Tf = simple(Tf);
pretty(Tf)

