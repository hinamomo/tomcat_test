let spr;
let balloonImage;

function preload() {
    balloonImage = loadImage('balloon.png');
}

function setup() {
  createCanvas(400, 400);
  spr = createSprite( width/2, height/2, 40, 40);
  //spr.shapeColor = color(255);
  spr.velocity.y = 0.5;
  spr.addImage(balloonImage);
}

function draw() {
  background(50);
  drawSprites();
}

function mousePressed() {
  spr.position.x = mouseX;
  spr.position.y = mouseY;
}