let spr;
let balloonImage;
let bangImage;
let coinCount;
let coinCounterImage;
let coinImage;

/*
 * ゲームで花クリック、いくつかにコインを入れて、それが５つでコンプリート
 * ショップでお買い物ができる
 * お買い物したものを部屋に飾れる
 * ドラッグドロップの参考
 * https://q-az.net/elements-drag-and-drop/
 * 部屋画像の参考
 * https://yigao.jp/cg/game/2/
 * https://www.twipu.com/mumuyakko/tweet/1108717124611006465
 * 
 * 商品
 * ＬＥＤキャンドル　ピラー　ラスティク　ルミナラ　アイボリー
 * https://loft.omni7.jp/detail/4901435795850
 * 
 * ハーバリウム　ハート　Ｔｈａｎｋ　ｙｏｕ
 * https://loft.omni7.jp/detail/413255105046
 * 
 * ２０２０年１月始まり　卓上　リングカレンダー　うさまる
 * https://loft.omni7.jp/detail/4995027012234-4995027012234
 * 
 * コンテナチロル　きなこもち
 * https://loft.omni7.jp/detail/4901958064600-4901958064600
 * 
 * リズモ　アクア
 * https://loft.omni7.jp/detail/4904810499374
 * 
 * フクロウルームシューズ　ベージュ
 * https://loft.omni7.jp/detail/4523251024848
 * 
 * TODO
 * shop.jspの文字コード
 * アイテム透過、リサイズ
 */

function preload() {
    balloonImage = loadImage('balloon.png');
    bangImage = loadImage('bang.png');
    coinCounterImage = loadImage('view_item.png');
    backgroundImage = loadImage('sky.png');
    coinImage = loadImage('coin.png');
}

function setup() {
  createCanvas(600, 540);
  coinCount=0;
  
  //ゲームモードを初期化
  gameMode = 'gamePlaying';
  
  //文字の設定
  fill(30,64,255);
  textFont('Paytone One');
  textStyle(BOLD);
}

function draw() {
  //background(30,240,255);
  background(backgroundImage);
  
//  if (gameMode == 'gameCompleted') {
  if (coinCount >= 3) {
	  
	  // 重なる風船をクリックしてカウントが６になった場合の補正
	  if(coinCount > 3){
    	  coinCount=3;
      }
      // コインを集め終わった時の処理
      gameCompleted();
      
  } else {
	  if (random(80) < 1) {
	      createBalloon(random(30, width - 30), height + 40);
	  }
  }
  
  drawSprites();
  
  //コインのカウンターを表示
  image(coinCounterImage, width - 120, 10);
  // カウンターの数字を表示
  textSize(40);
  textAlign(RIGHT);
  text(coinCount, width - 40, 88);

  // コインを集め終わっていたら「COMPLETED」を表示
  if (gameMode == 'gameCompleted') {
    textSize(85);
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
    
    // コインをドロップする
    if(random(10) < 5){
    	
    	// コインのスプライトを作る
        var coin = createSprite(balloon.position.x, balloon.position.y);
        // 破裂の画像を追加する
        coin.addImage(coinImage);
        
        // 拾ったコインの数を数える
        coinCount++;
        
       // 一定時間で消す
        coin.life = 30;
    	
    }
    
    //コインを集めたらゲーム終了
    if (coinCount == 3) {
        gameMode = 'gameCompleted';
    }
}

//コインを集め終わった
function gameCompleted() {

}

}