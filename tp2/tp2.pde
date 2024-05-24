String título;
String textoUno, textoDos, textoDosDos, textoTres;
int estado;
int centroX, centroY, diametro;
PImage imagenUno, imagenDos, imagenDosDos, imagenTres;
float tamUno, tamDos, tamTres;
float posY, posX;

void setup (){
  
size(640,480); 

imagenUno = loadImage ("Truco 1.jpg");
imagenDos = loadImage ("truco 2.00.jpg" );
imagenDosDos = loadImage ("truco 2.000.jpg");
imagenTres = loadImage ("truco 3.0.jpg");

tamUno= 20;
tamDos = 2;
tamTres = 19;
posY = height + 10;
posX = width;
estado = 1;
centroX = 578;
centroY = 400;
diametro = 70;

título = "Truco";
textoUno = "El Truco es un juego de cartas popular en la sociedad argentina que se\nmanifiesta en reuniones familiares y de amigos, hasta en competiciones\na nivel profesional. No se limita al azar, sino que también está moldeado\npor la habilidad estratégica y la capacidad de engaño de los jugadores.";
textoDos = "Se juega con una baraja española\nde 40 cartas en la que se reparten\ntres cartas a cada uno de los\nparticipantes y que constan de\ncuatro palos:\nespadas, bastos, oros y copas.";
textoDosDos = "Mano a mano o en parejas,\ngana el que llega a la cantidad\nde puntos pactada previamente\n(15 o 30 puntos).";
textoTres = "Se necesita de la práctica para aprender todas sus reglas,\ntanto para conocer los valores de las cartas y sus señas,\ncomo también los cantos y sus respuestas: envido, flor, truco.";

}

void draw (){
background(255);
 
 
//ESTADO UNO
if (estado == 1){
image(imagenUno, 0, 0, width, height);
fill (0);
textSize (tamUno);
text (textoUno, 25, 400);
textSize (tamDos);
text (título, 170, 100);
if(tamDos <= 120) {
tamDos += 1;
}
if ( frameCount/60 >= 8 ) 
estado = 2;

 
//ESTADO DOS
}else if (estado == 2){ 
image(imagenDos, 0, 0, width / 2, height / 2);
image(imagenDosDos, width / 2, 0, width / 2, height / 2);
fill (0);
textSize (tamUno);
text (textoDos, 20, posY);
text(textoDosDos, 350, posY);
if(posY >= 310) {
posY --;
}
if ( frameCount/60 >= 20 ) 
estado = 3; 


//ESTADO TRES
}else if (estado == 3){
image(imagenTres, 100, 120, 430, 350);
fill (0);
textSize (tamUno);
text (textoTres, posX, 70);
fill (255, 255, 0);
circle (centroX, centroY, diametro);
fill (0);
textSize (tamTres);
text ("Reinicio", 547, 407);
if(posX >= 65) {
posX = posX - 2;
}
if(frameCount/60 >= 30 );
}

}

//Variables que mueren aca.
void mousePressed (){ 

if(estado == 3){
float d = dist(mouseX, mouseY, centroX, centroY);
int r = diametro / 2;
if(d < r){
estado = 1; 
frameCount = 1;
println("se presiono el circular");
}
}


tamDos = 2;
posY = height + 10;
posX = width;

}


  
  
  
  
  
  
  
  
  
  
