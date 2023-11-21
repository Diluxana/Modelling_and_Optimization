fuzz_inf= readfis('CareEnvironment.fis');
I1 = input('What is the ambient temperature Range(-20°c to 50°C): ');
I2 = input('What is the Humidity percentage:' );
I3 = input('What is the current lighting value(Range:0 to 100) ' );
I4 = input('What is the Weathercondition value(Range:0 to 100):' );
I5 = input('What is the current time in hrs:');
Eval_rules = evalfis([I1 I2 I3 I4 I5],fuzz_inf);
O1= Eval_rules(1);
O2= Eval_rules(2);
O3= Eval_rules(3);
O4= Eval_rules(4);
O5= Eval_rules(5);
disp('======================================================')

% Heater Output:
if O1 < 14
    disp('Switch on RH_1' )
elseif(14<O1)&&(O1<25)
    disp('Switch on RH_1 and RH_2')
elseif(25<O1 )&&(O1<40)
    disp('Switch on RH_1, RH_2, and RH_3' )
elseif(40<O1)&&(O1<65)
    disp('Switch on RH_1, RH_2, RH_3, and RH_4')
elseif(65<O1 )&&(O1<84)
    disp('Switch on RH_1, RH_2, RH_3, RH_4, RH_5' )
elseif(72<O1 )&&(O1<100)
    disp('Switch on RH_1, RH_2, RH_3, RH_4, RH_5, RH_6' )
end

% Blinds Output

if O2 < 14
    disp('Switch on Blinds 1' )
elseif(14<O2) &&(O2 < 30)
    disp('Switch on Blinds 1 and 2' )
elseif(30<O2)&&( O2<50)
    disp('Switch on Blinds 1, 2, and 3' )
elseif(50<O2)&&( O2<70)
    disp('Switch on Blinds 1, 2, 3, and 4 ')
elseif(70<O2)&&( O2<90)
    disp('Switch on Blinds 1, 2, 3, 4, and 5' )
elseif(90<O2)&&( O2<100)
    disp('Switch on Blinds 1, 2, 3, 4, S, and 6' )
end

% Lights Output
if O3 < 20
    disp('Switch on Light 1' )
elseif(20<O3 )&&( O3<50)
    disp('Switch on Light 1 and 2' )
elseif(50<O3 )&&( O3<70)
    disp('Switch on Light 1, 2, and 3' )
elseif(70<O3 )&&( O3<90)
    disp('Switch on Light 1, 2, 3, and 4 ')
else
    disp('Switch on Light 1, 2, 3, 4, and 5')
end

% Cooling Fans
if O4 < 12
    disp('Switch on CL fan 1' )
elseif(12<O4)&&(O4<25)
    disp('Switch on CL fan 1 and 2' )
elseif(25<O4)&&(O4<35)
    disp('Switch on CL fan 1, 2, and 3' )
elseif(35<O4)&&(O4<55)
    disp('Switch on CL fan 1, 2, 3, and 4' )
elseif(55<O4)&&(O4<65)
    disp('Switch on CL fan 1, 2, 3, 4, and 5' )
elseif(65<O4)&&(O4<75)
    disp('Switch on CL fan 1, 2, 3, 4, 5, and 6')
elseif(75<O4)&&(O4<90)
    disp('Switch on CL fan 1, 2, 3, 4, 5, 6 and 7')
elseif(90<O4)&&(O4<100)
    disp('Switch on CL fan 1, 2, 3, 4, 5, 6, 7 and 8')
end

%Volume Controller
if O5 < 0.3
    disp('Switch on VC 1' )
elseif(0.3<O5)&&(O5<0.5)
    disp('Switch on VC 1 and 2' )
elseif(0.5<O5)&&(O5<0.6)
    disp('Switch on VC 1, 2, and 3' )
elseif(0.6<O5)&&(O5<0.8)
    disp('Switch on VC 1, 2, 3, and 4' )
elseif(0.8<O5)&&(O5<1)
    disp('Switch on VC 1, 2, 3, 4, and 5' )
end

disp('======================================================')