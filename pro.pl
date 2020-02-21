x([],[],0,0).
%X is CGPA.


x([Marks|T],[X|Y],Total_Grade_point,Total_Cunits):-

(Marks >= 80
-> Cunits is 5;

Marks >= 75
-> Cunits is 4.5;

Marks >= 70
-> Cunits is 4;

Marks >= 65
-> Cunits is 3.5;

Marks >= 60
-> Cunits is 3;

Marks >= 55
-> Cunits is 2.5;

Marks >= 50
-> Cunits is 2;

Marks >= 45
-> Cunits is 1.5;

Marks >= 40
-> Cunits is 1;

   Cunits is 0),


x(T,Y,Q,Cn),

Total_Grade_point is Q +(Cunits*X),

Total_Cunits is Cn+X.



compute_CGPA(CGPA,[Marks|T],[X|Y]):-

x([Marks|T],[X|Y],Total_Grade_point,Total_Cunits),

CGPA is Total_Grade_point/Total_Cunits.
