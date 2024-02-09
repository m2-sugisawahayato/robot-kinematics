void draw(){

 background(255, 255, 255);

 Px = sin(radians(-rad0))*cos(radians(-rad1))*arm2L + sin(radians(-rad0))*cos(radians(-rad1+rad2))*arm3L;
 Py = cos(radians(-rad0))*cos(radians(-rad1))*arm2L + cos(radians(-rad0))*cos(radians(-rad1+rad2))*arm3L;
 Pz = arm1L + sin(radians(-rad1))*arm2L + sin(radians(-rad1+rad2))*arm3L;
 println("先端の現在地"+Px,Py,Pz);

 if(keyPressed){
   if(key == 't'){
     vx = vx0;
     vy = vy0;
     vz = vz0;
   }
 }

  //当たり判定
  if(-120 <= rad0 && rad0 <= -60 
     && -100 <= sphereY && sphereY <= 100 
     && -60  <= rad1 && rad1 <= -30
     &&  10  <= rad2 && rad2 <= 60 ){
   vx -= vx + swingSpeed;
   vy  = (-1)*(vy + swingSpeed);  //打球速度
   vz  = vz + swingSpeed /10;
  }   
    
    

   //球の作成
   pushMatrix();

   fill(255, 0, 0);
   sphereX += vx;
   sphereY += vy;
   sphereZ += vz;
   translate(sphereX, sphereY, sphereZ);
   sphere(r);

   popMatrix();
  
  
   //バットの作成
   pushMatrix();
    
   if(keyPressed){
    if (rad0 >= -270){
     if(key == 'd'){
       rad0 -= swingSpeed;
     }
     if(key == 'D'){
       rad0 += swingSpeed;
     }
    }
    if (rad1 >= -80){
     if(key == 's'){
       rad1 = rad1 - sensitivity;
     }
     if(key == 'w'){
       rad1 = rad1 + 1;
     }
    }
    if (rad2 <= 90){
     if(key == 'a'){
      rad2 = rad2 + sensitivity;
     }
     if(key == 'A'){
      rad2 = rad2 - 1;
     }
    }
   }
    
    
   //腕1の作成 
   rotateZ(radians(rad0));
   translate(0, 0, arm1L/2);
   fill(0, 0, 0);
   box(arm1W, arm1W, arm1L);
    
   //腕2の作成
   translate(0, 0, arm1L/2);
   fill(200);
   sphere(25);
   rotateX(radians(rad1));
   translate(0,arm2L/2,0);
   fill(50, 50, 50);
   box(arm2W, arm2L, arm2W);


   //バットの作成
   translate(0, arm2L/2, 0);
   fill(200);
   sphere(25);
   rotateX(radians(rad2));
   translate(0,arm3L/2,0);
   fill(115, 78, 48);
   box(arm3W, arm3L, arm3W);

   popMatrix();
  
  
  
}
