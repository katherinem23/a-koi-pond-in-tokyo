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


PONDOBJ pondObjects[7];
PONDOBJ pondStuff[40];
SPRITE plants[20];

SPRITE cursor;
enum {MENU, INSTRUCTIONS, GAME, PAUSE, END};
int GAMESTATE;
enum {DOWN, LEFT, RIGHT, UP};
int DIRECTION;
enum {FISHING, TRAVEL, HOME};
int SCENE;
int frameCount;
int animateP;



enum {KOI, NONKOI};

int SCENE;
int cursorMove;
int selectedSprite;
int pondStuffCount;

void initializeHome() {
    
    DMANow(3, shadowOAM, OAM, 512);
    DMANow(3, pondSceneDraftTiles, &CHARBLOCK[1], pondSceneDraftTilesLen/2);
    DMANow(3, pondSceneDraftMap, &SCREENBLOCK[12], pondSceneDraftMapLen/2);
    DMANow(3, pondSceneDraftPal, PALETTE, pondSceneDraftPalLen/2);
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(12) | BG_SIZE_SMALL | BG_4BPP; 
    DMANow(3, koiSpritedraftTiles, &CHARBLOCK[4], koiSpritedraftTilesLen/2);
    DMANow(3, koiSpritedraftPal, SPRITEPALETTE, koiSpritedraftPalLen/2);
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    SPRITEPALETTE[7] = WHITE;
    shadowOAM[101].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(2);
    shadowOAM[101].attr1 = ATTR1_MEDIUM | ATTR1_X(210 );
    shadowOAM[101].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6,4);
}

void updateHomePond() {
    //updateActiveKoi();
    if(BUTTON_PRESSED(BUTTON_START)) {
            animateP = 1;
            SCREENBLOCK[12].tilemap[OFFSET(3,13,32)] = SCREENBLOCK[12].tilemap[OFFSET(0,20,32)];
            SCREENBLOCK[12].tilemap[OFFSET(8,12,32)] = SCREENBLOCK[12].tilemap[OFFSET(1,20,32)];
            SCREENBLOCK[12].tilemap[OFFSET(5,19,32)] = SCREENBLOCK[12].tilemap[OFFSET(2,20,32)];
            SCREENBLOCK[12].tilemap[OFFSET(7,8,32)] = SCREENBLOCK[12].tilemap[OFFSET(0,20,32)];
            SCREENBLOCK[12].tilemap[OFFSET(2,9,32)] = SCREENBLOCK[12].tilemap[OFFSET(2,20,32)];

        }
    frameCount++;
    if(animateP) {
        animatePond();
    }
    
    if(BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        initializeEnd();
        SCENE = FISHING;
    }
    
    if(cursorMove) {
        
        if(BUTTON_PRESSED(BUTTON_RIGHT) && cursor.x < 111) {
            cursor.x += 20;
            selectedSprite++;
        }
        if(BUTTON_PRESSED(BUTTON_LEFT) && cursor.x > 29) {
            cursor.x -= 20;
            selectedSprite--;
        }
        shadowOAM[1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(cursor.y);
        shadowOAM[1].attr1 = ATTR1_SMALL | ATTR1_X(cursor.x);
        
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        cursorMove = 0;
        createSprite(selectedSprite);
    }

    if(!cursorMove) {
        //move the selected sprite
        if(pondStuff[pondStuffCount].active) {
        cursorMoveSprite(selectedSprite);
        }
    }
}
void createPondSprites() {
    createMenuBar();
    createCursor();
    cursorMove = 1;
    pondStuffCount = 0;
    selectedSprite = 0;
    frameCount = 0;
}
void cursorMoveSprite(int i) {
    if (BUTTON_HELD(BUTTON_RIGHT)) {
            pondStuff[pondStuffCount].x += 1;
            if(pondStuff[pondStuffCount].x > 223) {
                pondStuff[i].x = 223;
            }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        pondStuff[pondStuffCount].x -= 1;
        if(pondStuff[pondStuffCount].x < 0) {
            pondStuff[pondStuffCount].x = 0;
        }
    }
    if (BUTTON_HELD(BUTTON_UP)) {
            pondStuff[pondStuffCount].y -= 1;
            if(pondStuff[pondStuffCount].y < 0) {
                pondStuff[pondStuffCount].y = 0;
            }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        pondStuff[pondStuffCount].y += 1;
        if(pondStuff[pondStuffCount].y > 143) {
            pondStuff[pondStuffCount].y = 143;
        }
    }

    shadowOAM[pondStuffCount+20].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(pondStuff[pondStuffCount].y);
    shadowOAM[pondStuffCount+20].attr1 = ATTR1_SMALL | ATTR1_X(pondStuff[pondStuffCount].x);
    if(i<3) {shadowOAM[pondStuffCount + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i*2, 0);}
    if( i == 3) {shadowOAM[pondStuffCount + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 0);}
    if( i > 3) {shadowOAM[pondStuffCount + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i*2 + 6, 0);}


    if (BUTTON_PRESSED(BUTTON_B)) {
        if(((pondStuff[pondStuffCount].y > 70 && pondStuff[pondStuffCount].x > 100)) || pondStuff[pondStuffCount].type == NONKOI) {
        // pondStuff[pondStuffCount].active = 0;
        cursorMove = 1;
        pondStuff[pondStuffCount].placed = 1;
        pondStuffCount++; 
    }
    }
}

void createSprite(int i) {
    if(i < 3) {
        pondStuff[pondStuffCount].x = i*20 + 10;
        pondStuff[pondStuffCount].y = 25;
        pondStuff[pondStuffCount].direction = rand() % 4;
        pondStuff[pondStuffCount].dx = 1;
        pondStuff[pondStuffCount].dy = 1;
        pondStuff[pondStuffCount].type = KOI;
        pondStuff[pondStuffCount].frame = rand() % 3;
        pondStuff[pondStuffCount].timeUntilNextFrame = 20;
        shadowOAM[pondStuffCount + 20].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(pondStuff[i].y);
        shadowOAM[pondStuffCount + 20].attr1 = ATTR1_SMALL | ATTR1_X(pondStuff[i].x);
        shadowOAM[pondStuffCount + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i*2, 0);
    } else {
        pondStuff[pondStuffCount].x = i*20 + 10;
        pondStuff[pondStuffCount].y = 25;
        pondStuff[pondStuffCount].type = NONKOI;
        pondStuff[pondStuffCount].timeUntilNextFrame = 10;
        shadowOAM[pondStuffCount + 20].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(pondStuff[i].y);
        shadowOAM[pondStuffCount + 20].attr1 = ATTR1_SMALL | ATTR1_X(pondStuff[i].x);
        if( i == 3) {shadowOAM[pondStuffCount + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 0);}
        if( i > 3) {shadowOAM[pondStuffCount + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i*2 + 6, 0);}
    }
    pondStuff[pondStuffCount].active = 1;
    pondStuff[pondStuffCount].placed = 0;
    pondStuff[pondStuffCount].frame = 0;
    }

void createMenuBar() {
    for (int i=0;i<7;i++) {
        pondObjects[i].x = i*20 + 10;
        pondObjects[i].y = 5;
        shadowOAM[i + 10].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(pondObjects[i].y);
        shadowOAM[i + 10].attr1 = ATTR1_SMALL | ATTR1_X(pondObjects[i].x);
        if (i < 3) {shadowOAM[i + 10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i*2, 0);}
        if( i == 3) {shadowOAM[i + 10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 0);}
        if( i > 3) {shadowOAM[i + 10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i*2 + 6, 0);}
    }

}

void createCursor() {
    cursor.x = 10;
    cursor.y = 5;
    shadowOAM[1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(cursor.y);
    shadowOAM[1].attr1 = ATTR1_SMALL | ATTR1_X(cursor.x);
    shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(12,0);
}

void updateActiveKoi() {
    for (int i = 0; i < pondStuffCount; i++) {
        // pondStuff[i].timeUntilNextFrame--;
        //     if (pondStuff[i].timeUntilNextFrame == 0 && !pondStuff[i].active) {
        //         pondStuff[i].timeUntilNextFrame = 5;
        //         pondStuff[i].frame = (pondStuff[i].frame + 1) % 4;
        //     }
        // if (frameCount % 10 == 0) {
        //     switch (pondStuff[i].direction) {
        //         case(DOWN):
        //         pondStuff[i].y += pondStuff[i].dy;
        //         pondStuff[i].x += pondStuff[i].dx;
        //         if (pondStuff[i].x > 240) {pondStuff[i].direction = LEFT;}
        //         if (pondStuff[i].y > 125) {pondStuff[i].direction = UP;}
        //         break;
        //         case(LEFT):
        //         pondStuff[i].y += pondStuff[i].dy;
        //         pondStuff[i].x -= pondStuff[i].dx;
        //         if (pondStuff[i].y > 125) {pondStuff[i].direction = UP;}
        //         if (pondStuff[i].x < 0) {pondStuff[i].direction = RIGHT;}

        //         break;
        //         case(RIGHT):
        //         pondStuff[i].y -= pondStuff[i].dy;
        //         pondStuff[i].x += pondStuff[i].dx;
        //         if (pondStuff[i].x > 240) {pondStuff[i].direction = LEFT;}
        //         if (pondStuff[i].y < 0) {pondStuff[i].direction = DOWN;}
        //         break;
        //         case(UP):
        //         pondStuff[i].y -= pondStuff[i].dy;
        //         pondStuff[i].x -= pondStuff[i].dx;
        //         if (pondStuff[i].y < 0) {pondStuff[i].direction = DOWN;}
        //         if (pondStuff[i].x < 0) {pondStuff[i].direction = RIGHT;}
                
        //         break;
        //     }

            shadowOAM[i+20].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(pondStuff[i].y);
            shadowOAM[i+20].attr1 = ATTR1_SMALL | ATTR1_X(pondStuff[i].x);
            shadowOAM[i + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1, pondStuff[i].direction*2);
            

        }
        

    }

    void animatePond() {
    for (int i = 0; i < pondStuffCount;i++) {
        pondStuff[i].timeUntilNextFrame--;
            if (pondStuff[i].timeUntilNextFrame == 0) {
                pondStuff[i].timeUntilNextFrame = 20;
                pondStuff[i].frame = (pondStuff[i].frame + 1) % 3;
            }
            if(pondStuff[i].type == KOI) {
                switch (pondStuff[i].direction) {
                case(DOWN):
                pondStuff[i].y += pondStuff[i].dy;
                pondStuff[i].x += pondStuff[i].dx;
                if (pondStuff[i].x > 230 || pondStuff[i].y > 150) {pondStuff[i].direction = rand() % 4;}
                break;
                case(LEFT):
                pondStuff[i].y += pondStuff[i].dy;
                pondStuff[i].x -= pondStuff[i].dx;
                if (pondStuff[i].y > 150|| pondStuff[i].x < 75) {pondStuff[i].direction = rand() % 4;}

                break;
                case(RIGHT):
                pondStuff[i].y -= pondStuff[i].dy;
                pondStuff[i].x += pondStuff[i].dx;
                if (pondStuff[i].x > 230 || pondStuff[i].y < 60) {pondStuff[i].direction = rand() % 4;}
                break;
                case(UP):
                pondStuff[i].y -= pondStuff[i].dy;
                pondStuff[i].x -= pondStuff[i].dx;
                if (pondStuff[i].x < 75 || pondStuff[i].y < 60) {pondStuff[i].direction = rand() % 4;}
                
                break;
            }
            shadowOAM[i+20].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(pondStuff[i].y);
            shadowOAM[i+20].attr1 = ATTR1_SMALL | ATTR1_X(pondStuff[i].x);
            shadowOAM[i + 20].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(pondStuff[i].frame*2, pondStuff[i].direction*2);

            }

    
    }
    }
    
