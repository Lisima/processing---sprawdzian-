class Bloczek
{
  int x, y, rx, ry;  //rozmiar i polozenie

  Bloczek() //konstrukto tworzacy klase
  {
    x = (int)random(100,200);   //wylosowanie wartosci polozenia i rozmiaru
    x = (int)random(100,200);   // rx i ry rozmiar
    
    rx = (int)random(10,20);
    ry = (int)random(10,20);
    
   }
   
   void draw()
    {
      rect(x ,y, rx, ry);  //narysuj prostokat o 
    }
    
    void  down()
    {
      y = y + 2;  //bloczek przesuwa sie o 2  w dol
    }
    
    void up()
    {
      y = y - 3;   //bloczek przesuwa sie o 3 do gory
    }
    
    void size(int r)
    {
      rx = rx + r;    //rozmiar
      ry = ry + r;
      
    }
    
}