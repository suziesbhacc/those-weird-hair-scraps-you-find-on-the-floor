/**
*This program creates a picture of a cat
*@author
*@version
*/
size(400,400);
background(#D7BDEA);

noStroke();
fill(#141415);
ellipse(240,195,120,80);
ellipse(160,190,80,60);
//ears
triangle(185,150,200,200,160,200);
triangle(130,150,170,200,120,200);

//legs
noStroke();
fill(#141415);
ellipse(130,215,60,30);
noStroke();
fill(#3C393E);
ellipse(200,215,70,30);

//tail
noStroke();
fill(#141415);
ellipse(295,230,30,100);
ellipse(295,270,30,100);

//face
stroke(#EDDEF7);
line(130,185,150,185);
line(160,185,180,185);
triangle(161,195,156,203,151,195);

//whiskers
stroke(#EDDEF7);
line(130,192,110,195);
line(180,192,198,194);
