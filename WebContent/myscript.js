let spr;
let balloonImage;
let bangImage;

function preload() {
    balloonImage = loadImage('asterisk.png');
    bangImage = loadImage('bang.png');
}

function setup() {
  createCanvas(600, 540);
  // createBalloon(width/2,height/2);
  //spr = createSprite( width/2, height/2, 40, 40);
  //spr.velocity.y = 0.5;
  //spr.addImage(balloonImage);
}

function draw() {
  background(50);
  
  if (random(80) < 1) {
      createBalloon(random(30, width - 30), height + 40);
  }
  
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
    
    balloon.onMousePressed = balloonHit;
}

//バルーンを破裂させる
function balloonHit(balloon) {
   
    // 風船を消す
    balloon.remove();
    
    let x = balloon.position.x;

    // 破裂のスプライトを作る
    var bang = createSprite(balloon.position.x, balloon.position.y);

    // 破裂の画像を追加する
    bang.addImage(bangImage);

    // 一定時間で消す
    bang.life = 30;
}