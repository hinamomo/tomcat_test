let spr;
let balloonImage;

function preload() {
    balloonImage = loadImage('balloon.png');
}

function setup() {
  createCanvas(400, 400);
  createBalloon(width/2,height/2);
  //spr = createSprite( width/2, height/2, 40, 40);
  //spr.velocity.y = 0.5;
  //spr.addImage(balloonImage);
}

function draw() {
  background(50);
  drawSprites();
}

function mousePressed() {
  spr.position.x = mouseX;
  spr.position.y = mouseY;
}

//風船を作る
function createBalloon(x, y) {
    // 風船のスプライトを作る
    var balloon = createSprite(x, y,40,40);

    // 風船の画像を追加する
    balloon.addImage(balloonImage);

    // 風船を上に移動させるための速度を代入する
    balloon.velocity.y = random(-1.5, -1);
}