let spr;
let balloonImage;
let bangImage;
let honeyCount;
let honeyCounterImage;

/*
 * ゲームで花クリック、いくつかにコインを入れて、それが５つでコンプリート
 * ショップでお買い物ができる
 * お買い物したものを部屋に飾れる
 */

function preload() {
    balloonImage = loadImage('asterisk.png');
    bangImage = loadImage('bang.png');
    honeyCounterImage = loadImage('view_item.png');
}

function setup() {
  createCanvas(600, 540);
  honeyCount=0;
  
  //ゲームモードを初期化
  gameMode = 'gamePlaying';
  
  //文字の設定
  fill(250);
  textFont('Paytone One');
  textStyle(BOLD);
}

function draw() {
  background(50);
  
  if (gameMode == 'gameCompleted') {
      // ハチミツを集め終わった時の処理
      gameCompleted();
  } else {
	  if (random(80) < 1) {
	      createBalloon(random(30, width - 30), height + 40);
	  }
  }
  
  drawSprites();
  
  //ハチミツのカウンターを表示
  image(honeyCounterImage, width - 145, 10);
  // カウンターの数字を表示
  textSize(40);
  textAlign(RIGHT);
  text(honeyCount, width - 40, 88);

  // ハチミツを集め終わっていたら「COMPLETED」を表示
  if (gameMode == 'gameCompleted') {
    textSize(90);
    textAlign(CENTER);
    text('COMPLETED', width / 2, height / 2);
  }
  
  // ハチミツを集め終わっていたら「COMPLETED」を表示
  if (gameMode == 'gameCompleted') {
    textSize(90);
    textAlign(CENTER);
    text('COMPLETED', width / 2, height / 2);
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
    
    // 拾ったハチミツの数を数える
    honeyCount++;
    
    //ハチミツを集めたらゲーム終了
    if (honeyCount == 5) {
        gameMode = 'gameCompleted';
    }
}

//ハチミツを集め終わった
function gameCompleted() {
    // プーさんは動かさない
    // pooh.velocity.x = 0;
    // pooh.velocity.y = 0;
}

}