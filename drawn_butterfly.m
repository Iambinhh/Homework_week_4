syms t1 t2 t l1 l2 l3 c1 c2 s1 s2  
l1=10;
l2=10;

for t=0:0.1:12*pi
  
    x=5*sin(t)*(exp(cos(t))-2*cos(4*t)-sin(t/12)^5);
    y=5*cos(t)*(exp(cos(t))-2*cos(4*t)-sin(t/12)^5);
    

    c2=(x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2=sqrt(abs(1-c2^2));
    t2=atan2(s2,c2);

    
    c1=x*(l1+l2*c2)+y*l2*s2;
    s1=y*(l1+l2*c2)-x*l2*s2;
    t1=atan2(s1,c1);


    px=l1*cos(t1)+l2*cos(t1+t2);
    py=l1*sin(t1)+l2*sin(t1+t2);

    subplot(2,2,1)
    plot(px,py,'r*');
    xlabel('x(cm)');
    ylabel('y(cm)');
    axis([-20 20 -20 20])
    hold on
   
   
    subplot(2,2,3)
    plot(t,t1*180/pi,'r--.',t,t2*180/pi,'b--.');
    xlabel('t');
    ylabel('rotation');
    
    hold on
    

end

    
   
    

    
    
    
 

