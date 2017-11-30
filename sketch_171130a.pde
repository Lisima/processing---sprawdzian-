int KolorTla  = #FFFFFF;
int rozmiarKwadratu = 5;
int rozmiarKola = 10;

Bloczek b1;
Bloczek b2;

void setup()
{
  
size(320,200);  //wielkosc
b1 = new Bloczek();
b2 = new Bloczek();  //dodanie bloczkow do programu
 
}

void draw()
{
  background(KolorTla); //kolor tła 
  fill(#FAF205); //wypełnienie koła
  stroke(#5E05FA); // obwód koła
  strokeWeight(3); //grubosc obwodu koła

  ellipse(50,80,rozmiarKola,rozmiarKola);  //ellipse(50,80,10,10);  kolo w punkcie 50 80 o promieniu 10px
  
  
  
  fill(#FDFCFF); //wypełnienie koła
  stroke(#36F71E); // obwód koła
  strokeWeight(1); //grubosc obwodu koła
  
  rect(mouseX, mouseY, rozmiarKwadratu, rozmiarKwadratu); //rect(mouseX, mouseY, 5, 5); pojawia sie kwadrat w miejscu myszki o boku 5 na 5
  b1.draw();
  b1.down();  //bloczki spadaja
  b2.draw();
  b2.down();
  }
  
  
  void keyPressed() //wykrywanie nacisniecia klawisza
  {
  
  if( key == 'k' ) //jezeli nacisnie sie klawisz k   
    {
        KolorTla = (int)random(0xFFFFFF); //randomowy kolor tła
    }
      
   if (key == 'r') 
   {
     rozmiarKola++;       //zmienia rozmiar kola i kwadratu +
     rozmiarKwadratu++;
   }
      
      if (key == 'm')
   {
     rozmiarKola--; //zmienia rozmiar kola i kwadratu -
     rozmiarKwadratu--;
   }
      //dodanie nowej klasy -- new tab ^
  }