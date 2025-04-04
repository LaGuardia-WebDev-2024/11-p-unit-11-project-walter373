var rainX = [100, 150, 190, 260];
var rainY = [70, 70, 70, 70];

var pplX = [170,20,400,90,100,290]
var pplY = [300,300,300,300,300,300]

var ppl2X = [110,150,390,250]
var ppl2Y = [300,300,250,300] 

var xPositions = [100,200];
var yPositions = [200,200];

setup = function() {
   size(600, 450); 
   background(44, 35, 85,);
  textSize(40);
   for(var i = 0; i < pplX.length; i++){
     text("🧍‍♂️", pplX[i], pplY[i]);
   }
  
   textSize(30);
   for(var i = 0; i < pplX.length; i++){
     text("👩‍👩‍👧👮‍♀️👷‍♀️", pplX[i], pplY[i]);
   }
  
  
  fill(34,80,100)
   textSize(70);
   for(var i = 0; i < rainX.length; i++){
     text("🌨⛈", rainX[i], rainY[i]);
   }
   
   fill(255,255,255);

textSize(20);
for(var i=0;i<700;i+=70)
 text ('🐈🐕',i,100);
}
draw = function(){

 
  drawUmbrella();
if (mousePressed){
 xPositions.push(mouseX);
 yPositions.push(mouseY);
}
 drawPig(200,50);
}

var drawUmbrella = function() {

    for (var i = 0; i < yPositions.length; i++) {
    fill(25,25,200);
    textSize(50)
        text("☂", xPositions[i], yPositions[i]);
        
    }
    
};


//Function Definition
var drawPig = function(pigX, pigY){
  strokeWeight(2)
  stroke(0,0,0)

  fill(229, 149,  120)
  rect(150+pigX, 480+pigY,20,60)
  rect(90+pigX, 480+pigY,20,60)
  ellipse(130+pigX, 430+pigY, 120,150)
  ellipse(130+pigX, 330+pigY,100,100)
  quad(170+pigX, 300+pigY, 190+pigX, 285+pigY, 205+pigX, 315+pigY)
  quad(90+pigX, 300+pigY,  70+pigX, 285+pigY,  55+pigX, 315+pigY)
  rect(150+pigX, 400+pigY,20,60)
  rect(90+pigX, 400+pigY,20,60)
  ellipse(130+pigX, 340+pigY, 60, 30)

  fill(0,0,0)
  ellipse(140+pigX, 340+pigY, 5,10)
  ellipse(120+pigX, 340+pigY, 5,10)
  ellipse(110+pigX, 320+pigY, 10,10)
  ellipse(150+pigX, 320+pigY, 10,10)
};
