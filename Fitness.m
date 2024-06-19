function result = Fitness(X,SOC,I,U)
    N=8900;
    Err_Messure = zeros(1,N);
    y=zeros(1,N);
    for k=1:N
        %if I(k)<=0
        %    in=I(k);
        %    ip=0;
        %else 
        %    in=0;
        %   ip=I(k);
       % end
        y(k)=X(1)+X(2)/SOC(k)+X(3)*SOC(k)+X(4)*log(SOC(k))+X(5)*log(1-SOC(k))+X(6)*I(k);
        Err_Messure(k)=abs(y(k)-U(k));
        
    end
    EM=sum(Err_Messure)/N;
   
    result = EM;
end

