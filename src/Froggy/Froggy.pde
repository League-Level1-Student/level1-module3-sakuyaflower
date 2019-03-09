int x = 20;
int y = 20;
Car c = new Car(45,43,56,67);
Car r = new Car(74,234,76,87);
Car g = new Car(86,723,54,65);
void draw(){
 background(#FC7D7D);
 fill(#7DFCC6); 
  ellipse(x,y,100,100);
  keyPressed();
  if(y<0){
    y = 0;
  }
  if(y>1100){
   y = 1099;  
  }
  if(x<0){
   x = 0; 
  }
  if(x>1100){
   x = 1099; 
  }
c.display();
c.moce();    
r.display();
r.moce();
g.display();
g.moce();
  
}
void setup(){
size(1100,1100);

  
  
}
void keyPressed(){
      if(key == CODED){
            if(keyCode == UP)
            {
              y--;   
              //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
                  y++;
                  //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
                 
              x++;
              //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              x--;   
              //Frog X position goes left
            }
      }
}
class Car{
int x;
int y;
int size;
int sp;
ge
Car(int x, int y, int size , int sp ){
  this.x = x;
  this.y = y;
  this.size = size;
  this.sp = sp;

}
void moce(){
 x += sp; 
if(x<0){
x = 1100;
}
if(x>1100){
x = 0;
}
}
void display() 
{
      fill(0,255,0);
      rect(x , y, size, 50);

}

}
