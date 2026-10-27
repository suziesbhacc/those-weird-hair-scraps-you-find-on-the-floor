/*
 * Thid program..
 *@author Ry
 *@version Sept 2024
 */
size(400,400);
background(#CDBCE0);
//background
fill(#F3F2F5);
noStroke();
triangle(200,200,300,400,100,400);
noStroke();
fill(#4E425D);
ellipse(200,200,200,200);
ellipse(200,150,300,100);
ellipse(200,100,120,100);

//stars
fill(#FAFAFA);
triangle(40,20,60,60,20,60);
triangle(40,100,60,60,20,60);
triangle(350,270,370,310,330,310);
triangle(350,350,370,310,330,310);


//body
stroke(#3F344D);
fill(#84709B);
ellipse(190,320,20,100);//left leg
ellipse(210,320,20,100);//right leg
ellipse(200,240,50,100);//main body
ellipse(180,240,20,50);//left arm
ellipse(220,240,20,50);//right arm


//head
ellipse(200,140,100,120);
fill(#19131F);
ellipse(170,140,30,50);//left eye
ellipse(230,140,30,50);//right eye
line(190,180,210,180);//mouth


line(170,90,150,50);//left head thing
line(230,90,250,50);//right head thing
fill(#5B4F6A);
ellipse(156,50,10,30);
ellipse(245,50,10,30);
