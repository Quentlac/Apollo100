/* @pjs preload="rocher.png"; */
/* @pjs preload="fuse.png"; */
/* @pjs preload="drapeau.png"; */
/* @pjs preload="crystal.png"; */
/* @pjs preload="bule.png"; */
/* @pjs preload="burger.png"; */
/* @pjs preload="generateur_oxy.png"; */
/* @pjs preload="rapide_chaussure.png"; */
/* @pjs preload="usine.png"; */
/* @pjs preload="pizza.png"; */
/* @pjs preload="petrolier.png"; */
/* @pjs preload="essence_voiture.png"; */
/* @pjs preload="radar.png"; */
/* @pjs preload="energie.png"; */
/* @pjs preload="logo.png"; */

/* @pjs preload="Personnage/personnage_devant_arret.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_1.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_2.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_3.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_4.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_5.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_6.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_7.png"; */
/* @pjs preload="Personnage/personnage_devant_marche_8.png"; */

/* @pjs preload="Personnage/personnage_gauche_arret.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_1.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_2.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_3.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_4.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_5.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_6.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_7.png"; */
/* @pjs preload="Personnage/personnage_gauche_marche_8.png"; */

/* @pjs preload="Personnage/personnage_arriere_arret.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_1.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_2.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_3.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_4.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_5.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_6.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_7.png"; */
/* @pjs preload="Personnage/personnage_arriere_marche_8.png"; */

/* @pjs preload="Personnage/personnage_droite_arret.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_1.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_2.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_3.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_4.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_5.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_6.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_7.png"; */
/* @pjs preload="Personnage/personnage_droite_marche_8.png"; */

Rocher[] pierre = new Rocher[500];
Drapeau[] drapeau = new Drapeau[50];
Crystal[] crystal = new Crystal[30];
Generateur_oxygene[] gen_oxy = new Generateur_oxygene[50];
Usine[] usine = new Usine[10];
Petrolier[] petrolier = new Petrolier[10];
Radar[] radar = new Radar[10];
Mur[] mur = new Mur[4];


class Rocher {
  int x;
  int y;
}

class Drapeau {
  int x;
  int y;
}

class Crystal {
  int x;
  int y;
 
  int visibility = 1;
}

class Generateur_oxygene {
  int x;
  int y;
}

class Usine{
  int x;
  int y;
}

class Petrolier{
  int x;
  int y;
  
  float energie;
}

class Radar{
  int x;
  int y;
}

class Mur{
 int xa;
 int ya;
 
 int xb;
 int yb;  
}

int x_fuse = 230;
int y_fuse = 350;

int open_inventaire = 0;

int nb_rocher = 500;
int nb_drapeau = 50;
int nb_crystal = 30;
int nb_gen_oxy = 50;
int nb_usine = 10;
int nb_petrolier = 10;
int nb_radar = 10;
int nb_mur = 4;

int nb_drapeau_pose = 0;
int nb_gen_oxy_pose = 0;
int nb_usine_pose = 0;
int nb_petrolier_pose = 0;
int nb_radar_pose = 0;

int nb_crystal_decouvert = 100;

int oxygene = 10;
long tmp_bulle_eclat = 0;

int alimentation = 10;
long tmp_burger_disp = 0;

long tmp_genere_essence = 0;
float essence_genere = 0;

int open_page_game_over = 0;
int open_page_win = 0;

int batiment_porte = 0;

PImage img_pierre;
PImage fuse;
PImage flag;
PImage imgcrystal;
PImage bulle;
PImage burger;
PImage generat_oxy;
PImage rapide_chaussure;
PImage img_usine;
PImage pizza;
PImage img_petrolier;
PImage bidon_essence_voiture;
PImage img_radar;

//image personnage:
PImage personnage_devant_arret;
PImage personnage_devant_marche_1;
PImage personnage_devant_marche_2;
PImage personnage_devant_marche_3;
PImage personnage_devant_marche_4;
PImage personnage_devant_marche_5;
PImage personnage_devant_marche_6;
PImage personnage_devant_marche_7;
PImage personnage_devant_marche_8;

PImage personnage_gauche_arret;
PImage personnage_gauche_marche_1;
PImage personnage_gauche_marche_2;
PImage personnage_gauche_marche_3;
PImage personnage_gauche_marche_4;
PImage personnage_gauche_marche_5;
PImage personnage_gauche_marche_6;
PImage personnage_gauche_marche_7;
PImage personnage_gauche_marche_8;

PImage personnage_arriere_arret;
PImage personnage_arriere_marche_1;
PImage personnage_arriere_marche_2;
PImage personnage_arriere_marche_3;
PImage personnage_arriere_marche_4;
PImage personnage_arriere_marche_5;
PImage personnage_arriere_marche_6;
PImage personnage_arriere_marche_7;
PImage personnage_arriere_marche_8;

PImage personnage_droite_arret;
PImage personnage_droite_marche_1;
PImage personnage_droite_marche_2;
PImage personnage_droite_marche_3;
PImage personnage_droite_marche_4;
PImage personnage_droite_marche_5;
PImage personnage_droite_marche_6;
PImage personnage_droite_marche_7;
PImage personnage_droite_marche_8;

PImage logo;
PImage energie;

int speed = 2;

int tmp_boost_speed = 0;

int img_personnage = 0;
long tmp_change_img_pers = 0;

int presentation = 1;

void setup() {
  size(600, 500);
  background(220, 220, 200);

  img_pierre = loadImage("rocher.png");
  fuse = loadImage("fuse.png");
  flag = loadImage("drapeau.png");
  imgcrystal = loadImage("crystal.png");
  bulle = loadImage("bule.png");
  burger = loadImage("burger.png");
  generat_oxy = loadImage("generateur_oxy.png");
  rapide_chaussure = loadImage("rapide_chaussure.png");
  img_usine = loadImage("usine.png");
  pizza = loadImage("pizza.png");
  img_petrolier = loadImage("petrolier.png");
  bidon_essence_voiture = loadImage("essence_voiture.png");
  img_radar = loadImage("radar.png");
  energie = loadImage("energie.png");
  
  //chargement image personnage
  
  personnage_devant_arret = loadImage("Personnage/personnage_devant_arret.png");
  personnage_devant_marche_1 = loadImage("Personnage/personnage_devant_marche_1.png");
  personnage_devant_marche_2 = loadImage("Personnage/personnage_devant_marche_2.png");
  personnage_devant_marche_3 = loadImage("Personnage/personnage_devant_marche_3.png");
  personnage_devant_marche_4 = loadImage("Personnage/personnage_devant_marche_4.png");
  personnage_devant_marche_5 = loadImage("Personnage/personnage_devant_marche_5.png");
  personnage_devant_marche_6 = loadImage("Personnage/personnage_devant_marche_6.png");
  personnage_devant_marche_7 = loadImage("Personnage/personnage_devant_marche_7.png");
  personnage_devant_marche_8 = loadImage("Personnage/personnage_devant_marche_8.png");
  
  personnage_gauche_arret = loadImage("Personnage/personnage_gauche_arret.png");
  personnage_gauche_marche_1 = loadImage("Personnage/personnage_gauche_marche_1.png");
  personnage_gauche_marche_2 = loadImage("Personnage/personnage_gauche_marche_2.png");
  personnage_gauche_marche_3 = loadImage("Personnage/personnage_gauche_marche_3.png");
  personnage_gauche_marche_4 = loadImage("Personnage/personnage_gauche_marche_4.png");
  personnage_gauche_marche_5 = loadImage("Personnage/personnage_gauche_marche_5.png");
  personnage_gauche_marche_6 = loadImage("Personnage/personnage_gauche_marche_6.png");
  personnage_gauche_marche_7 = loadImage("Personnage/personnage_gauche_marche_7.png");
  personnage_gauche_marche_8 = loadImage("Personnage/personnage_gauche_marche_8.png");
  
  personnage_arriere_arret = loadImage("Personnage/personnage_arriere_arret.png");
  personnage_arriere_marche_1 = loadImage("Personnage/personnage_arriere_marche_1.png");
  personnage_arriere_marche_2 = loadImage("Personnage/personnage_arriere_marche_2.png");
  personnage_arriere_marche_3 = loadImage("Personnage/personnage_arriere_marche_3.png");
  personnage_arriere_marche_4 = loadImage("Personnage/personnage_arriere_marche_4.png");
  personnage_arriere_marche_5 = loadImage("Personnage/personnage_arriere_marche_5.png");
  personnage_arriere_marche_6 = loadImage("Personnage/personnage_arriere_marche_6.png");
  personnage_arriere_marche_7 = loadImage("Personnage/personnage_arriere_marche_7.png");
  personnage_arriere_marche_8 = loadImage("Personnage/personnage_arriere_marche_8.png");
  
  personnage_droite_arret = loadImage("Personnage/personnage_droite_arret.png");
  personnage_droite_marche_1 = loadImage("Personnage/personnage_droite_marche_1.png");
  personnage_droite_marche_2 = loadImage("Personnage/personnage_droite_marche_2.png");
  personnage_droite_marche_3 = loadImage("Personnage/personnage_droite_marche_3.png");
  personnage_droite_marche_4 = loadImage("Personnage/personnage_droite_marche_4.png");
  personnage_droite_marche_5 = loadImage("Personnage/personnage_droite_marche_5.png");
  personnage_droite_marche_6 = loadImage("Personnage/personnage_droite_marche_6.png");
  personnage_droite_marche_7 = loadImage("Personnage/personnage_droite_marche_7.png");
  personnage_droite_marche_8 = loadImage("Personnage/personnage_droite_marche_8.png");
  
  logo = loadImage("logo.png");

  for (int i = 0; i < nb_rocher; i++) {
    pierre[i] = new Rocher();
  }

  for (int i = 0; i < nb_drapeau; i++) {
    drapeau[i] = new Drapeau();
  }

  for (int i = 0; i < nb_drapeau; i++) {
    drapeau[i] = new Drapeau();
  }

  for (int i = 0; i < nb_crystal; i++) {
    crystal[i] = new Crystal();
  }

  for (int i = 0; i < nb_gen_oxy; i++) {
    gen_oxy[i] = new Generateur_oxygene();
  }
  
  for (int i = 0; i < nb_usine; i++) {
    usine[i] = new Usine();
  }
  
  for (int i = 0; i < nb_petrolier; i++) {
    petrolier[i] = new Petrolier();
  }
  
  for (int i = 0; i < nb_radar; i++) {
    radar[i] = new Radar();
  }
  
  for (int i = 0; i < nb_mur; i++) {
    mur[i] = new Mur();
  }

  for (int i = 0; i < nb_rocher; i++) {
    pierre[i].x = round(random(-2000, 2000));
    pierre[i].y = round(random(-2000, 2000));
  }

  for (int i = 0; i < nb_crystal; i++) {
    crystal[i].x = round(random(-2000, 2000));
    crystal[i].y = round(random(-2000, 2000));
  }
  
  mur[0].xa = -2070;
  mur[0].ya = -2070;
  mur[0].xb = 2070;
  mur[0].yb = -2070;
  
  mur[1].xa = 2070;
  mur[1].ya = -2070;
  mur[1].xb = 2070;
  mur[1].yb = 2070;
  
  mur[2].xa = 2070;
  mur[2].ya = 2070;
  mur[2].xb = -2070;
  mur[2].yb = 2070;
  
  mur[3].xa = -2070;
  mur[3].ya = 2070;
  mur[3].xb = -2070;
  mur[3].yb = -2070;
}

void draw() {
  if (open_inventaire == 0 && open_page_game_over == 0 && presentation == 0 && open_page_win == 0) {
    background(220, 220, 200);
    fill(255, 0, 0);
    stroke(0);
    //rect(295, 400, 10, 15);
    
    affiche_personnage();
    
    affiche_objets();

    if(oxygene <= 0){
      open_page_game_over = 1; 
    }
    if(alimentation <= 0){
      open_page_game_over = 1; 
    }
    
    if(essence_genere >= 100){
      open_page_win = 1;
    }
    
    fill(0);
    textSize(25);
    text(int(essence_genere)+"%",10,470);
    textSize(15);
    fill(10,250,100,100);
    rect(10,475,int(map(essence_genere,0,100,0,580)),20);
    fill(0,0,0,0);
    rect(10,475,580,20);
   
    
    genere_essence();
      
    if(tmp_boost_speed > 0){
      tmp_boost_speed--;
      image(rapide_chaussure,540,440,50,50);
      print(tmp_boost_speed+"\n");
    }
    else{
      speed = 1; 
    }


    test_trouve_crystal();
    test_recharge_oxy();

    if(batiment_porte != 0){
      if(batiment_porte == 1){
        image(img_petrolier,270,15,60,80); 
      }
      if(batiment_porte == 2){
        image(img_radar,270,10,60,80); 
      }
      fill(0);
      text("SPACE pour poser",230,100);
    }

    if (keyPressed == true) {
      /*if(millis() - tmp_change_img_pers > 50){
        tmp_change_img_pers = millis();
        img_personnage ++;
        if(img_personnage > 8)img_personnage = 1;
      }*/
      move_pers();
      if (key == 'd') {
        if (nb_drapeau_pose < nb_drapeau && nb_crystal_decouvert > 0) {
          drapeau[nb_drapeau_pose].x = 270;
          drapeau[nb_drapeau_pose].y = 400;
          nb_drapeau_pose ++;
          nb_crystal_decouvert--;
          delay(1000);
        }
      }
      if (key == ' ') {
        if(batiment_porte != 0){
          if(batiment_porte == 1){
            petrolier[nb_petrolier_pose].x = 270;
            petrolier[nb_petrolier_pose].y = 340;
            nb_petrolier_pose++;
            batiment_porte = 0;
          }
          if(batiment_porte == 2){
            radar[nb_radar_pose].x = 270;
            radar[nb_radar_pose].y = 340;
            nb_radar_pose++;
            batiment_porte = 0;
          }
          delay(100);
        }
        else{
          open_inventaire = 1;
        }
      }
    }
    else{
      if(keyCode == UP){
        img_personnage = 0; 
      }
      if(keyCode == LEFT){
        img_personnage = 9;
      }
      if(keyCode == DOWN){
        img_personnage = 18;
      }
      if(keyCode == RIGHT){
        img_personnage = 28;
      }
    }
    if (millis() - tmp_bulle_eclat > 18000) {
      tmp_bulle_eclat = millis();
      oxygene--;
    }
    if (millis() - tmp_burger_disp > 60000) {
      tmp_burger_disp = millis();
      alimentation--;
    }
  } 
  else if(open_inventaire == 1 && open_page_game_over == 0){
    inventaire();
  }
  else if(open_page_game_over == 1){
    textSize(50);
    fill(0);
    text("GAME OVER",150,250);
  }
  else if(presentation == 1){
    background(220, 220, 200);
    image(logo,0,-20,600,150);
    fill(0);
    stroke(0);
    line(0,130,600,130);
    
    textSize(50);
    
    if(mouseX > 249 && mouseX < 349 && mouseY > 259 && mouseY < 309){
      fill(60,60,60);
      cursor(HAND);
      if(mousePressed == true){
        presentation = 0; 
        cursor(ARROW);
      }
    }
    else{
      cursor(ARROW);
    }
    text("Play",250,300);
    
    fill(0);
    textSize(15);
    text(" Votre fusée est tombée en panne d'essence!!! heureusement, les missions \n précédentes ont permis de découvrir l'existance de minerais contenant de \n l'énergie pour construire des objets. Déplacez vous grâce aux touches \n directionnelles et appuyez sur espace pour ouvrir l'inventaire. \n Attention, gérer bien votre alimentation et votre oxygene. Pour ouvir \n l'inventaire d'un batiment, placez vous a l'intérieur et appuyez sur espace!!!",0,350);
    fill(0);
        
  }
  else if(open_page_win == 1){
    textSize(50);
    fill(0);
    text("YOU WIN",170,250);
    
  }
}

void test_trouve_crystal() {
  for (int i = 0; i < nb_crystal; i++) {
    if (crystal[i].visibility == 1) {
      if (crystal[i].x > 280 && crystal[i].x < 300) {
        if (crystal[i].y > 358 && crystal[i].y < 445) {
          nb_crystal_decouvert++;
          if (round(random(0, 1)) == 1) {
            crystal[i].x = round(random(-2000, 0));
            crystal[i].y = round(random(-2000, 0));
          } else {
            crystal[i].x = round(random(600, 2000));
            crystal[i].y = round(random(500, 2000));
          }
        }
      }
    }
  }
}

void test_recharge_oxy() {
  if (x_fuse > 0 && x_fuse < 600) {
    if (y_fuse > 0 && y_fuse < 500) {
      while (oxygene < 10)oxygene++;
    }
  }
  for(int i = 0; i < nb_gen_oxy_pose;i++){
    if(gen_oxy[i].x > 75 && gen_oxy[i].x < 350){
      if(gen_oxy[i].y > 100 && gen_oxy[i].y < 500){
        while (oxygene < 10)oxygene++;
      }
    }
  }
}

void affiche_objets(){
  for (int i = 0; i < nb_rocher; i++) {
      image(img_pierre, pierre[i].x, pierre[i].y, 50, 40);

      //pour les coordone des pierres
      /*textSize(10);
       fill(0);
       text(pierre[i].x+","+pierre[i].y,pierre[i].x,pierre[i].y + 50);
       */
    }

    for (int i = 0; i < nb_drapeau_pose; i++) {
      image(flag, drapeau[i].x, drapeau[i].y, 20, 30);
    }

    for (int i = 0; i < nb_gen_oxy_pose; i++) {
      image(generat_oxy, gen_oxy[i].x, gen_oxy[i].y, 120, 140);
    }
    
    for (int i = 0; i < nb_usine_pose; i++) {
      image(img_usine, usine[i].x, usine[i].y, 120, 140);
    }
   
    for (int i = 0; i < nb_petrolier_pose; i++) {
      image(img_petrolier, petrolier[i].x, petrolier[i].y, 120, 140);
    }
    
    for (int i = 0; i < nb_radar_pose; i++) {
      image(img_radar, radar[i].x, radar[i].y, 90, 90);
    }

    for(int i = 0; i < nb_mur;i++){
      fill(0);
      line(mur[i].xa,mur[i].ya,mur[i].xb,mur[i].yb); 
    }
    for (int i = 0; i < nb_crystal; i++) {
      if (crystal[i].visibility == 1) {
        image(imgcrystal, crystal[i].x, crystal[i].y, 25, 40);
      }
    }
    
    for (int i = 0; i < oxygene; i++) {
      image(bulle, i*20, 1, 25, 25);
    }

    for (int i = 0; i < alimentation; i++) {
      image(burger, i*21, 30, 23, 23);
    }
    
    image(fuse, x_fuse, y_fuse, 50, 75);
    fill(0);
    textSize(15);
    image(imgcrystal, 532, 1, 14, 17);
    text(nb_crystal_decouvert, 550, 15);
}

void move_pers(){
  if (keyCode == UP) {
    int mv_rocher = 1;
    for (int i = 0; i < nb_rocher; i++) {
      if (pierre[i].x > 265 && pierre[i].x < 298) {
        if (pierre[i].y > 364 && pierre[i].y < 407) {
          mv_rocher = 0;
        }
      }
    }
    if(mur[0].ya > 400)mv_rocher = 0;
 
    if (mv_rocher == 1) {
      if(millis() - tmp_change_img_pers > 60){
        tmp_change_img_pers = millis();
        if(img_personnage < 1)img_personnage = 1;
        img_personnage++;
        if(img_personnage > 8)img_personnage = 1;
      }
      //on bouge tous les obj
      for (int i = 0; i < nb_rocher; i++) {
        pierre[i].y +=speed;
      }
      y_fuse+=speed;
      for (int i = 0; i < nb_drapeau_pose; i++) {
        drapeau[i].y +=speed;
      }
      for (int i = 0; i < nb_crystal; i++) {
        crystal[i].y +=speed;
      }
      for (int i = 0; i < nb_gen_oxy_pose; i++) {
        gen_oxy[i].y +=speed;
      }
      for (int i = 0; i < nb_usine_pose; i++) {
        usine[i].y +=speed;
      }
      for (int i = 0; i < nb_petrolier_pose; i++) {
        petrolier[i].y +=speed;
      }
      for (int i = 0; i < nb_radar_pose; i++) {
        radar[i].y +=speed;
      }
      for (int i = 0; i < nb_mur; i++) {
        mur[i].ya +=speed;
        mur[i].yb +=speed;
      }
    }
  }
  if (keyCode == DOWN) {
    int mv_rocher = 1;
    for (int i = 0; i < nb_rocher; i++) {
      if (pierre[i].x > 265 && pierre[i].x < 298) {
        if (pierre[i].y > 366 && pierre[i].y < 420) {
          mv_rocher = 0;
        }
      }
    }
    if(mur[2].ya < 415)mv_rocher = 0;
    
    if (mv_rocher == 1) {
      if(millis() - tmp_change_img_pers > 75){
        tmp_change_img_pers = millis();
        if(img_personnage < 19)img_personnage = 19;
        img_personnage++;
        if(img_personnage > 27)img_personnage = 19;
      }      
      for (int i = 0; i < nb_rocher; i++) {
        pierre[i].y -=speed;
      }
      y_fuse-=speed;
      for (int i = 0; i < nb_drapeau_pose; i++) {
        drapeau[i].y -=speed;
      }
      for (int i = 0; i < nb_crystal; i++) {
        crystal[i].y -=speed;
      }
      for (int i = 0; i < nb_gen_oxy_pose; i++) {
        gen_oxy[i].y -=speed;
      }
      for (int i = 0; i < nb_usine_pose; i++) {
        usine[i].y -=speed;
      }
      for (int i = 0; i < nb_petrolier_pose; i++) {
        petrolier[i].y -=speed;
      }
      for (int i = 0; i < nb_radar_pose; i++) {
        radar[i].y -=speed;
      }
      for (int i = 0; i < nb_mur; i++) {
        mur[i].ya -=speed;
        mur[i].yb -=speed;
      }
    }
  }

  if (keyCode == RIGHT) {
    int mv_rocher = 1;
    for (int i = 0; i < nb_rocher; i++) {
      if (pierre[i].y > 366 && pierre[i].y < 407) {
        if (pierre[i].x > 265 && pierre[i].x < 310) {
          mv_rocher = 0;
        }
      }
    }
    if(mur[1].xa < 305)mv_rocher = 0;
    
    if (mv_rocher == 1) {
      if(millis() - tmp_change_img_pers > 75){
        tmp_change_img_pers = millis();
        if(img_personnage < 29)img_personnage = 29;
        img_personnage++;
        if(img_personnage > 36)img_personnage = 29;
      }
      for (int i = 0; i < nb_rocher; i++) {
        pierre[i].x -=speed;
      }
      x_fuse-=speed;
      for (int i = 0; i < nb_drapeau_pose; i++) {
        drapeau[i].x -=speed;
      }
      for (int i = 0; i < nb_crystal; i++) {
        crystal[i].x -=speed;
      }
      for (int i = 0; i < nb_gen_oxy_pose; i++) {
        gen_oxy[i].x -=speed;
      }
      for (int i = 0; i < nb_usine_pose; i++) {
        usine[i].x -=speed;
      }
      for (int i = 0; i < nb_petrolier_pose; i++) {
        petrolier[i].x -=speed;
      }
      for (int i = 0; i < nb_radar_pose; i++) {
        radar[i].x -=speed;
      }
      for (int i = 0; i < nb_mur; i++) {
        mur[i].xa -=speed;
        mur[i].xb -=speed;
      }
    }
  }
  if (keyCode == LEFT) {
    int mv_rocher = 1;
    for (int i = 0; i < nb_rocher; i++) {
      if (pierre[i].y > 366 && pierre[i].y < 407) {
        if (pierre[i].x > 260 && pierre[i].x < 295) {
          mv_rocher = 0;
        }
      }
    }
    if(mur[3].xa > 295)mv_rocher = 0;
    
    if (mv_rocher == 1) {
      if(millis() - tmp_change_img_pers > 75){
        tmp_change_img_pers = millis();
        if(img_personnage < 10)img_personnage = 10;
        img_personnage++;
        if(img_personnage > 17)img_personnage = 10;
      }
      for (int i = 0; i < nb_rocher; i++) {
        pierre[i].x +=speed;
      }
      x_fuse+=speed;
      for (int i = 0; i < nb_drapeau_pose; i++) {
        drapeau[i].x +=speed;
      }
      for (int i = 0; i < nb_crystal; i++) {
        crystal[i].x +=speed;
      }
      for (int i = 0; i < nb_gen_oxy_pose; i++) {
        gen_oxy[i].x +=speed;
      }
      for (int i = 0; i < nb_usine_pose; i++) {
        usine[i].x +=speed;
      }
      for (int i = 0; i < nb_petrolier_pose; i++) {
        petrolier[i].x +=speed;
      }
      for (int i = 0; i < nb_radar_pose; i++) {
        radar[i].x +=speed;
      }
      for (int i = 0; i < nb_mur; i++) {
        mur[i].xa +=speed;
        mur[i].xb +=speed;
      }
    } 
  }
}

void inventaire(){
  //inventaire
  int type_invent = 0;
  for(int i = 0;i < nb_usine_pose;i++){
    if(usine[i].x > 230 && usine[i].x < 265){
      if(usine[i].y > 320 && usine[i].y < 380){
        type_invent = 1; 
      }
    }
  }
  
  for(int i = 0;i < nb_petrolier_pose;i++){
    if(petrolier[i].x > 250 && petrolier[i].x < 275){
      if(petrolier[i].y > 300 && petrolier[i].y < 390){
        type_invent = 2; 
      }
    }
  }
  
  for(int i = 0;i < nb_radar_pose;i++){
    if(radar[i].x > 250 && radar[i].x < 275){
      if(radar[i].y > 300 && radar[i].y < 390){
        type_invent = 3; 
      }
    }
  }
  
  if(type_invent == 0){
    textSize(45);
    fill(0);
    text("INVENTAIRE", 160, 70);
    fill(255);
    stroke(0);
    rect(0, 100, 200, 200);
    rect(200, 100, 200, 200);
    rect(400, 100, 199, 200);
    rect(200, 300, 200, 400);


    image(burger, 45, 140, 100, 100);
    textSize(20);
    fill(0);
    text("1", 85, 275);
    image(imgcrystal, 105, 250, 20, 30);

    image(generat_oxy, 245, 140, 125, 125);
    textSize(20);
    fill(0);
    text("8", 285, 275);
    image(imgcrystal, 305, 250, 20, 30);
    
    image(rapide_chaussure, 445, 140, 100, 100);
    textSize(20);
    fill(0);
    text("5", 470, 275);
    image(imgcrystal, 505, 250, 20, 30);
    
    image(img_usine, 220, 320, 175, 175);
    textSize(20);
    fill(0);
    text("20", 275, 475);
    image(imgcrystal, 305, 450, 20, 30);
    

    if (nb_crystal_decouvert < 1) {
      line(0, 100, 200, 300); 
      line(200, 100, 0, 300);
    }

    if (nb_crystal_decouvert < 8) {
      line(200, 100, 400, 300); 
      line(400, 100, 200, 300);
    }
    if (nb_crystal_decouvert < 5) {
      line(400, 100, 600, 300); 
      line(600, 100, 400, 300);
    }
    
    if (nb_crystal_decouvert < 20) {
      line(200, 300, 400, 500); 
      line(400, 300, 200, 500);
    }

    if (mousePressed == true) {
      if (mouseY > 100 && mouseY < 300) {
        int caseX = mouseX / 200;
        if (caseX == 0) {
          //burger
          if (nb_crystal_decouvert >= 1) {
            alimentation++;
            tmp_burger_disp = millis();
            nb_crystal_decouvert--;
            open_inventaire = 0;
          }
        }
        if (caseX == 1) {
          if (nb_crystal_decouvert >= 8) {
            nb_crystal_decouvert -= 8;
            gen_oxy[nb_gen_oxy_pose].x = 270;
            gen_oxy[nb_gen_oxy_pose].y = 250;
            nb_gen_oxy_pose++;
            open_inventaire = 0;
          }
        }
        if (caseX == 2) {
          if (nb_crystal_decouvert >= 5) {
            nb_crystal_decouvert -= 5;
            speed = 3;
            tmp_boost_speed = 2000;
            open_inventaire = 0;
          }
        }
      }
      else if(mouseY > 300){
        int caseX = mouseX / 200;
        if(caseX == 1){
          if (nb_crystal_decouvert >= 20) {
            nb_crystal_decouvert -= 20;
            usine[nb_usine_pose].x = 250;
            usine[nb_usine_pose].y = 250;
            nb_usine_pose++;
            open_inventaire = 0;
          }
        }
        else{
          open_inventaire = 0; 
        }
      }
      else  if (mouseY < 100) {
        open_inventaire = 0;
      }
    }
  }
  else if(type_invent == 1){
    //usine
    textSize(45);
    fill(0);
    text("USINE", 220, 70);
    fill(255);
    stroke(0);
    rect(0, 100, 200, 200);
    rect(200, 100, 200, 200);
    rect(400, 100, 199, 200);
    rect(200, 300, 200, 400);
    
    image(pizza, 45, 140, 100, 100);
    textSize(20);
    fill(0);
    text("2", 85, 275);
    image(imgcrystal, 105, 250, 20, 30);
    
    image(img_petrolier, 250, 140, 125, 125);
    textSize(20);
    fill(0);
    text("10", 265, 275);
    image(imgcrystal, 305, 250, 20, 30);
    
    image(img_radar, 445, 140, 100, 100);
    textSize(20);
    fill(0);
    text("12", 470, 275);
    image(imgcrystal, 505, 250, 20, 30);
    
    if (nb_crystal_decouvert < 2) {
      line(0, 100, 200, 300); 
      line(200, 100, 0, 300);
    }
    
    if (nb_crystal_decouvert < 10) {
      line(200, 100, 400, 300); 
      line(400, 100, 200, 300);
    }
    
    if (nb_crystal_decouvert < 12) {
      line(400, 100, 600, 300); 
      line(600, 100, 400, 300);
    }
    
    if(mousePressed == true){
      if (mouseY > 100 && mouseY < 300) {
        int caseX = mouseX / 200;
        if (caseX == 0) {
          if(nb_crystal_decouvert >= 2){
            nb_crystal_decouvert -= 2;
            tmp_burger_disp = millis();
            alimentation += 3;
            open_inventaire = 0;
          }
        }
        if (caseX == 1) {
          if(nb_crystal_decouvert >= 10){
            nb_crystal_decouvert -= 10;
            batiment_porte = 1;
            open_inventaire = 0;
          }
        }
        if (caseX == 2) {
          if(nb_crystal_decouvert >= 12){
            nb_crystal_decouvert -= 12;
            batiment_porte = 2;
            open_inventaire = 0;
          }
        }
      }
      if (mouseY < 100) {
        open_inventaire = 0;
      } 
    }
  }
  else if(type_invent == 2){
    int id_petrolier = 0;
    for(int i = 0;i < nb_petrolier_pose;i++){
      if(petrolier[i].x > 250 && petrolier[i].x < 275){
        if(petrolier[i].y > 300 && petrolier[i].y < 390){
          id_petrolier = i;
        }
      }
    }
    //petrolier
    textSize(45);
    fill(0);
    text("PETROLIER", 200, 70);
    fill(255);
    stroke(0);   
    rect(200, 150, 200, 200);
    image(energie, 245, 190, 100, 100);

    textSize(20);
    fill(0);
    text("1", 285, 325);
    image(imgcrystal, 305, 300, 20, 30);
    
    fill(255);
    rect(0,420,599,79);
    
    image(energie,15,430,50,60);
    textSize(30);
    fill(0);
    text(int(petrolier[id_petrolier].energie),70,475);
    
    if(nb_crystal_decouvert < 1 || petrolier[id_petrolier].energie > 9){
      line(200, 150, 400, 350); 
      line(400, 150, 200, 350);
    }
    
    int total_petrolier_energie = 0;
    for(int i = 0; i < nb_petrolier_pose;i++){
      total_petrolier_energie += petrolier[i].energie; 
    }
    
    int pourcentage_util = 0;
    
    if(total_petrolier_energie == 0){
      pourcentage_util = 0; 
    }
    else{
      pourcentage_util = 100 * int(petrolier[id_petrolier].energie) / total_petrolier_energie; 
    }
    
    text(int(pourcentage_util)+"%",500,475);
    
    if(mousePressed == true){
      if (mouseY > 150 && mouseY < 350 && mouseX > 200 && mouseX < 400) {
        if(nb_crystal_decouvert >= 1 && petrolier[id_petrolier].energie < 10){
          petrolier[id_petrolier].energie++;
          nb_crystal_decouvert--;
          delay(200);
        }
      }
      else{
        open_inventaire = 0; 
      }
    }
  }
  else if(type_invent == 3){
    textSize(45);
    fill(0);
    text("RADAR", 220, 70);
    fill(255);
    stroke(0);
    rect(0,100,600,400);
    for(int i = 0;i < nb_rocher;i++){
      int x = int(map(pierre[i].x,mur[3].xa,mur[1].xa,0,600)); 
      int y = int(map(pierre[i].y,mur[0].ya,mur[2].ya,100,500)); 
      fill(255);
      rect(x,y,5,5);
    }
    for(int i = 0;i < nb_crystal;i++){
      int x = int(map(crystal[i].x,mur[3].xa,mur[1].xa,0,600)); 
      int y = int(map(crystal[i].y,mur[0].ya,mur[2].ya,100,500)); 
      fill(0,0,255);
      rect(x,y,5,5);
    }
    
    int x_map_fuse = int(map(x_fuse,mur[3].xa,mur[1].xa,0,600));
    int y_map_fuse = int(map(y_fuse,mur[0].ya,mur[2].ya,100,500));
    
    image(fuse,x_map_fuse,y_map_fuse,30,60);
    
    int x_me = int(map(295,mur[3].xa,mur[1].xa,0,600));
    int y_me = int(map(400,mur[0].ya,mur[2].ya,100,500));
    
    fill(255,0,0);
    rect(x_me,y_me,10,10);
    
    for(int i = 0;i < nb_drapeau_pose;i++){
      int x = int(map(drapeau[i].x,mur[3].xa,mur[1].xa,0,600)); 
      int y = int(map(drapeau[i].y,mur[0].ya,mur[2].ya,100,500)); 
      fill(0,255,0);
      rect(x,y,5,5);
    }
    
    
    
    if(mousePressed == true){
      if (mouseY < 100) {
        open_inventaire = 0;
      } 
    }
  } 
}

void affiche_personnage(){
  switch(img_personnage){
    case 0:
      image(personnage_devant_arret,295,400,20,30);
      break;
    case 1:
      image(personnage_devant_marche_1,295,400,20,30);
      break;
    case 2:
      image(personnage_devant_marche_2,295,400,20,30);
      break;
    case 3:
      image(personnage_devant_marche_3,295,400,20,30);
      break;
    case 4:
      image(personnage_devant_marche_4,295,400,20,30);
      break;
    case 5:
      image(personnage_devant_marche_5,295,400,20,30);
      break;
    case 6:
      image(personnage_devant_marche_6,295,400,20,30);
      break;
    case 7:
      image(personnage_devant_marche_7,295,400,20,30);
      break;
    case 8:
      image(personnage_devant_marche_8,295,400,20,30);
      break;
    case 9:
      image(personnage_gauche_arret,295,400,20,30);
      break;
    case 10:
      image(personnage_gauche_marche_1,295,400,20,30);
      break;
    case 11:
      image(personnage_gauche_marche_2,295,400,20,30);
      break;
    case 12:
      image(personnage_gauche_marche_3,295,400,20,30);
      break;
    case 13:
      image(personnage_gauche_marche_4,295,400,20,30);
      break;
    case 14:
      image(personnage_gauche_marche_5,295,400,20,30);
      break;
    case 15:
      image(personnage_gauche_marche_6,295,400,20,30);
      break;
    case 16:
      image(personnage_gauche_marche_7,295,400,20,30);
      break;
    case 17:
      image(personnage_gauche_marche_8,295,400,20,30);
      break;
    case 18:
      image(personnage_arriere_arret,295,400,20,30);
      break;
    case 19:
      image(personnage_arriere_marche_1,295,400,20,30);
      break;
    case 20:
      image(personnage_arriere_marche_2,295,400,20,30);
      break;
    case 21:
      image(personnage_arriere_marche_2,295,400,20,30);
      break;
    case 22:
      image(personnage_arriere_marche_3,295,400,20,30);
      break;
    case 23:
      image(personnage_arriere_marche_4,295,400,20,30);
      break;
    case 24:
      image(personnage_arriere_marche_5,295,400,20,30);
      break;
    case 25:
      image(personnage_arriere_marche_6,295,400,20,30);
      break;
    case 26:
      image(personnage_arriere_marche_7,295,400,20,30);
      break;
    case 27:
      image(personnage_arriere_marche_8,295,400,20,30);
      break;
    case 28:
      image(personnage_droite_arret,295,400,20,30);
      break;
    case 29:
      image(personnage_droite_marche_1,295,400,20,30);
      break;
    case 30:
      image(personnage_droite_marche_2,295,400,20,30);
      break;
    case 31:
      image(personnage_droite_marche_3,295,400,20,30);
      break;
    case 32:
      image(personnage_droite_marche_4,295,400,20,30);
      break;
    case 33:
      image(personnage_droite_marche_5,295,400,20,30);
      break;
    case 34:
      image(personnage_droite_marche_6,295,400,20,30);
      break;
    case 35:
      image(personnage_droite_marche_7,295,400,20,30);
      break;
    case 36:
      image(personnage_droite_marche_8,295,400,20,30);
      break;
  }
}

void genere_essence(){
  if(millis() - tmp_genere_essence > 2000){
    tmp_genere_essence = millis();
    for(int i = 0; i < nb_petrolier_pose;i++){
      essence_genere += petrolier[i].energie / 15; 
    }
  }
}