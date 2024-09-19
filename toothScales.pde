void setup() {
  size(500, 500);  //feel free to change the size
  background(225, 157, 151);
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  noStroke();
  //draw top rows of teeth
  fill(255,255,255);
  int scaleWidth = 30;  // width 
  int scaleHeight = 35; // height 
  for(int y = 0; y <= 220; y+=scaleHeight){
    for(int x = 5; x <= 460; x+=scaleWidth){
      scale(x,y);
    }
  }
  //draw bottom rows of teeth     
  for(int b = 500; b > 260; b = b-scaleHeight){
    for(int a = 5; a <= 460; a+=scaleWidth){
      secondScale(a,b);
    }
    }
  //draw bottom skin
  fill(244, 215, 195);
  rect(0,450,500,50);
  //draw bottom lips 
  fill(187, 100, 93);
  bottomLip();
  //draw top skin
  fill(244,215,195);
  rect(0,0,500,50);
  //draw top lip
  fill(187, 100, 93);
  topLip();
}

//top rows of teeth
void scale(int x, int y) {
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+20,y+30);
  curveVertex(x+40,y);
  curveVertex(x+40,y);
  endShape();

 
  }

//bottom rows of teeth
void secondScale(int a, int b){
 beginShape();
 curveVertex(a,b);
 curveVertex(a,b);
 curveVertex(a+20,b-30);
 curveVertex(a+40,b);
 curveVertex(a+40,b);
 endShape();
  
}


//bottom lip
void bottomLip(){
  beginShape();
  curveVertex(0,450);
  curveVertex(0,450);
  curveVertex(250,500);
  curveVertex(500,450);
  curveVertex(500,450);
  endShape();
  
}

//top lip 
void topLip(){
  beginShape();
  curveVertex(0,50);
  curveVertex(0,50);
  curveVertex(240,10);
  curveVertex(250,50);
  curveVertex(260,10);
  curveVertex(500,50);
  curveVertex(500,50);
  endShape();
}
