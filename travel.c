#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include "pondScene.h"
#include "spritesheet.h"
#include "koiSpriteDraft.h"
#include "startScreen.h"
#include "instructionScreen.h"
#include "pauseScreen.h"
#include "endScene.h"
#include "koiSpritedraft.h"
#include "pondTime.h"
#include "pondSceneDraft.h"
#include "game.h"
#include "transitionMap.h"
#include "mtnBackground.h"
#include "travel.h"
#include "music.h"

enum {DOWN, LEFT, RIGHT, UP};
int direction;
int turnOrange;
GRASSOBJ plants[15];
int plantColor;

void initializeTravel() {
    hideSprites();
    turnOrange = 0;
    plantColor = 0;
    DMANow(3, shadowOAM, OAM, 512);
    DMANow(3, transitionMapTiles, &CHARBLOCK[0], transitionMapTilesLen/2);
    DMANow(3, transitionMapMap, &SCREENBLOCK[10], transitionMapMapLen/2);
    DMANow(3, transitionMapPal, PALETTE, transitionMapPalLen/2);

    

    DMANow(3, mtnBackgroundTiles, &CHARBLOCK[2], mtnBackgroundTilesLen/2);
    DMANow(3, mtnBackgroundMap, &SCREENBLOCK[25], mtnBackgroundMapLen/2);
    

    DMANow(3, koiSpritedraftPal, SPRITEPALETTE, koiSpritedraftPalLen/2);

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) |BG_ENABLE(1)| SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(10) | BG_SIZE_LARGE;
    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(25) | BG_SIZE_LARGE;
    SPRITEPALETTE[7] = WHITE;

    mtnHoff = 0;
    mtnVoff = 20;
    plantsCollected = 0;

    grassHoff = 0;
    grassVoff =50;
    updateTravel();

     
}
void createGrassSprites() {
    player.x = 0;
    player.y = 185;
    player.width = 16;
    player.height = 16;

    for(int i = 0; i < 15; i++) {
        plants[i].x = rand() % 495 + 10;
        plants[i].y = rand() % 165 + 155;
        plants[i].frame = 0;
        plants[i].type = (rand()% 4);
        
    
        plants[i].active == 1;
        plants[i].timeUntilNextFrame = 30;
        
        
    }
}
void updateTravel () {
    if (frameCount % 20 == 0) {
        mtnHoff++;
    }
    
    

    if (BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;

    //if (topY > 0 && colorAt(rightX, topY - player.yDel) && colorAt(leftX, topY  - player.yDel)) {
        if(player.y > 150) {
            player.y-=1; 
       }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        
        player.direction = DOWN;
        if(player.y < 350) {
        player.y+= 1;
        }


        // if (bottomY < MAPHEIGHT && colorAt(rightX, bottomY + player.yDel) && colorAt(leftX, bottomY +player.yDel)) {
        //     player.y+=player.yDel;
        // }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        
        player.direction = LEFT;


       
        // if (leftX > 0 && colorAt(leftX - player.xDel , bottomY) && colorAt(leftX - player.xDel , topY)){
        //     player.x-=player.xDel;
        // }
        if(player.x > 0) {
        player.x-=1;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        
        player.direction = RIGHT;


        
        // if (rightX < MAPWIDTH && colorAt(rightX +player.xDel, bottomY) && colorAt(rightX+player.xDel, topY)) {
        //     player.x+=player.xDel;
        // }
        if(player.x < MAPWIDTH - player.width) {
        player.x+=1;
        }

        
    }




    grassHoff = player.x - (SCREENWIDTH  - player.width) / 2;
    grassVoff = player.y - (SCREENHEIGHT - player.height) / 2;
    if (grassHoff < 0) {
        grassHoff = 0;
    }
    if (grassVoff < 0) {
        grassVoff = 0;
    }
    if (grassHoff > MAPWIDTH - SCREENWIDTH) {
        grassHoff = MAPWIDTH - SCREENWIDTH;
    }
    if (grassVoff > MAPHEIGHT - SCREENHEIGHT) {
        grassVoff = MAPHEIGHT - SCREENHEIGHT;
    }
    shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - grassVoff);
    shadowOAM[0].attr1 = ATTR1_SMALL | ATTR1_X(player.x - grassHoff);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(22,0);
    
    
    for (int i = 0; i < 15; i++) {
        if(BUTTON_PRESSED(BUTTON_SELECT)) {
                if(collision(plants[i].x, plants[i].y, 15, 15, player.x, player.y, 15, 15)) {
                    shadowOAM[i + 1].attr0 = ATTR0_HIDE;
                    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(3);
                    REG_SND2FREQ = NOTE_GS5 | SND_RESET;
                    plants[i].x = -1;
                    plantsCollected++;
                    if(plantsCollected == 12) {
                        turnOrange = 1;
                    
                    }
                }
                
        }
        
        

        if(plants[i].x > -1) {
                plants[i].timeUntilNextFrame--;
            if(plants[i].timeUntilNextFrame == 0) {
                plants[i].frame = (plants[i].frame + 1) %3;
                plants[i].timeUntilNextFrame = 30;
        }
        


        if (plants[i].frame == 0) {
            SPRITEPALETTE[2] = RED;

        }
        if(plants[i].frame == 1) {
            SPRITEPALETTE[2] = CYAN;

        }
        if(plants[i].frame == 2) {
            SPRITEPALETTE[2] = ORANGE;

        }
        

       
        shadowOAM[i+1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(plants[i].y - grassVoff );
        shadowOAM[i+1].attr1 = ATTR1_SMALL | ATTR1_X(plants[i].x - grassHoff );
        
        if(plants[i].type == 0) {shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 0);}
        if(plants[i].type == 1) {shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(14, 0);}
        if(plants[i].type == 2) {shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, plants[i].frame * 2);}
        if(plants[i].type == 3) {shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, plants[i].frame * 2);}
        }

    }

    drawScene();
}

void drawScene() {
    REG_BG0HOFF = grassHoff;
    REG_BG0VOFF = grassVoff;

    REG_BG1HOFF = mtnHoff;
    REG_BG1VOFF = mtnVoff;

    DMANow(3, shadowOAM, OAM, 128*4);
}


void updatePlants() {
    for (int i = 0; i < 15; i++) {
        if(BUTTON_PRESSED(BUTTON_SELECT)) {
                if(collision(plants[i].x, plants[i].y, 15, 15, player.x, player.y, 15, 15)) {
                    shadowOAM[i + 1].attr0 = ATTR0_HIDE;
                    plants[i].active = 0;
                }
        }
        if(plants[i].active) {
            plants[i].timeUntilNextFrame--;
            if(plants[i].timeUntilNextFrame == 0) {
                plants[i].frame = (plants[i].frame + 1) %3;
                plants[i].timeUntilNextFrame = 10;
        }


        shadowOAM[i+1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(plants[i].y );
        shadowOAM[i+1].attr1 = ATTR1_SMALL | ATTR1_X(plants[i].x );
        shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16,0);
        }

    }
}