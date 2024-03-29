int widthX = 1800;  //スケッチの一辺
int widthY = 1200;  //スケッチの一辺

//腕の設定
float rad0  = 0;
float arm1W = 50;   //腕1の底面
float arm1L = 400;  //腕1の高さ（変更可）
float rad1  = 0;
float arm2W = 40;       //腕2の底面
float arm2L = arm1L/2;  //腕2の長さ

float sensitivity = 1.6;  //アーム2,3の感度調整(変更自由)

//バットの設定
float rad2 = 0;  //回転角度
float arm3W = 40;       //腕2の底面
float arm3L = arm1L/2;  //腕2の長さ
int swingSpeed = 2;  //スイングスピード(変更自由)

//球の設定
float sphereX = (arm2L + arm3L)/2;    //球の初期位置
float sphereY = -widthX;               
float sphereZ = arm1L/2;
float r = 10;     //球の大きさ
int vx0 = 0;  //球の速度の設定
int vy0 = int(random(swingSpeed*5,swingSpeed*10));
int vz0 = 0;
int vx, vy, vz;

float Px , Py ,Pz;
