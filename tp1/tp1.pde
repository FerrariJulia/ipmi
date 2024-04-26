// Ferrari, Julia
// Comisión 2
PImage paisaje;
void setup(){
size(800,400);
paisaje = loadImage("hermoso-atardecer-en-la-playa-84.jpg");
}
void draw(){
//fondo violeta
background(100,60,120);
image(paisaje, 0, 0, 400, 400); 
noStroke();
//fondo violeta/rosa
fill(170,60,255,170);
circle(600,286,400);
//fondo rojo
fill(255,80,90);
circle(600,286,300);
//fondo naranja
fill(255,150,0);
circle(600,286,150);
//raya por el sol
fill(255,200,0,150);
rect(400,280,800,400);
//sol
fill(255,255,0);
circle(600,286,50);
//agua más oscura
fill(0,0,130);
rect(400,286,800,400);
//agua más clara
fill(0,0,200);
rect(400,355,800,400);
//reflejo sol en el agua
fill(255,255,0,140);
triangle(600,286,450,400,750,400);
//raya amarilla, arriba del sol
fill(255,255,0,150);
rect(500,240,800,5);
//raya amarilla mediana, arriba del rol
rect(620,245,800,5);
//raya amarilla chica, arriba del sol
rect(740,250,800,5);
stroke(0);
//línea del horizonte
line(400,286,800,286);
}
