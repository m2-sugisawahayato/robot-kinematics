int widthX = 1800;  //スケッチの一辺
int widthY = 1200;  //スケッチの一辺

int startTime = 0;                   //プラグラム開始時の時間の取得
int  S = int(random(3000, 8000));   //実行開始までの時間
boolean started = false;             //実行開始しない

//腕の設定
float rad0  = 0;
float arm1W = 50;   //腕1の底面
float arm1L = 400;  //腕1の高さ
float rad1  = 0;
float arm2W = 40;       //腕2の底面
float arm2L = arm1L/2;  //腕2の長さ


//バットの設定
float rad2 = 0;  //回転角度
float arm3W = 40;       //腕2の底面
float arm3L = arm1L/2;  //腕2の長さ
int swingSpeed = 2;  //スイングスRピード

//球の設定
float sphereX = (arm2L + arm3L)/2;    //球の初期位置
float sphereY = -widthX*1.;               
float sphereZ = arm1L/2;
float r = 10;     //球の大きさ
int vx = 0;  //球の速度の設定
int vy = int(random(5,12));
int vz = 0;
