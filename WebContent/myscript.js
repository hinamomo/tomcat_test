// myscript.js
let img;

function setup(){
  // 最初に１回だけ実行される処理
  createCanvas(480,240);
  img = loadImage('asterisk.png');
}

function draw(){
  // そのあと繰り返し実行される処理
  background(0);
  rect(0,40,50,50);
  ellipse(100,140,50,50);
  image(img, 0, height / 2, img.width / 2, img.height / 2);
}
