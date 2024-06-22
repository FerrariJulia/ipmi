void CicloForRect() {
  for (int i = 0; i<cant; i++) {
    for (int g = 0; g<cant; g++) {
      float desaparece = map(mouseX, 0, width, 255, 0);
      if ((i + g) % 2 == 0) {
        fill (desaparece);
      } else {
        fill(0);
      }
      rect(i*tam + 400, g*tam, tam, tam ) ;

      pushMatrix();
      translate(i * tam + 400 + tam / 2, g * tam + tam / 2);
      rotate(rot);
      if ((i + g) % 2 == 0) {
        fill (0);
      } else {
        fill(255);
      }
      rect(-tamDos / 2, -tamDos/ 2, tamDos, tamDos);
      popMatrix();
    }
  }
}
