//Julia Ferrari
//Comisión 2
//https://youtu.be/XEfAkmH7U9Q

PImage ImagenOpticaMedio;
int cant;
int tam;
float tamDos;
float rot;

void setup () {
  size (800, 400);
  ImagenOpticaMedio = loadImage ("ImagenOpticaMedio.jpg");
  cant = 4;
  tam = (width/2)/ cant;
  tamDos = tam / sqrt(2);
  rot = radians(45);
}
void draw () {
  background (255);
  image(ImagenOpticaMedio, 0, 0, 400, 400);
  CicloForRect();
}
void keyPressed() {
  int keyValor = MovimientoReinicio(key);
  if (keyValor == 1) {
    rot = radians(frameCount);
  } else if (keyValor == 2) {
    mouseX = 0;
    rot = radians(45);
  }
  println ("keyValor: " + keyValor);
}
