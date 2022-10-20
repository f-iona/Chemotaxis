//Walker G; 
//Walker [] home = {new Walker (100,100), new Walker (300,300)};
//Walker [] outdoors = new Walker [150]; 

//void setup(){
//  size(500,500);
// G = new Walker(250,250);
// int i = 0; 
// while ( i < 150){
//   outdoors[i] = new Walker ((int)(Math.random()*300), (int)(Math.random()*300)); 
//   i++;
// }
//}

//void draw(){
// background(0);
// G.show();
// G.walk();
// home[0].show();
//   home[0].walk();
// home[1].show();
//   home[1].walk();
 
// fill (150);
// for (int i = 0; i < 150; i++){
//   outdoors[i].show();
//   outdoors[i].walk();
// }
 
//}

//class Walker
//{
//  int myX, myY; 
//  Walker(int x, int y) 
//  {
//    myX = x; 
//    myY = y; 
//  }

//  void show()
//  {
//    ellipse (myX, myY, 30,30);
//  }
  
//  void walk() 
//  {
//    myX = myX + (int)(Math.random()*7)-3;
//    myY = myY + (int)(Math.random()*7)-3;
    
//  }
  
//}//ends whole class


circs [] group = new circs [15];

void keyPressed(){
  setup();
}
    void setup(){
      size (400,400);
      background (#606CE8);
      int i = 0; 
 while (i < 15){
   group[i] = new circs (0, (int)(Math.random()*401)+1);
   i++;
   }

 }
    
    void draw(){
      for (int x = 0; x < group.length; x++){
        group[x].show();
        group[x].move();
      }
      
    }
    
    class circs
{
      int myX, myY, sizz; 
       circs(int x, int y) 
    {
       myX = x ; 
       myY = y; 
       sizz = (int)(Math.random()*56)+15;
    }
  
 void show() {
   noStroke();
  double p = Math.random(); 
  if ( p < 0.8) {
   fill (255, 255, 0 , 20);
   ellipse (myX, myY,sizz , sizz);
  } else {
    fill (255, 255, 255 , 25);
   ellipse (myX, myY,sizz , sizz);
  }
   }// end of show 
   
  void move() {
    myX = myX  + (int)(Math.random()*6)+1;
    myY = myY  + 1;
  } // end of move 
 
}// end of whole class 
