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
#include "pondSceneDraft.h"
#include "pondTime.h"
#include "travel.h"
#include "music.h"
#include "mtnBackground.h"

enum {MENU, INSTRUCTIONS, GAME, PAUSE, END};
int GAMESTATE;
enum {DOWN, LEFT, RIGHT, UP};
int DIRECTION;
enum {FISHING, TRAVEL, HOME};
int SCENE;
SPRITE koi[15];
SPRITE fisher;
SPRITE falcons[4];
SPRITE rock;
int frameCount;
int catchTime;


void initializeMenu() {
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen/2);
    DMANow(3, startScreenMap, &SCREENBLOCK[30], startScreenMapLen/2);
    DMANow(3, startScreenPal, PALETTE, startScreenPalLen/2);
    REG_DISPCTL = BG_ENABLE(1) | MODE(0);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL | BG_4BPP; 
    GAMESTATE = MENU;
}
void waitOnMenu() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        initializeGame();
        createSprites();
    }
    if(BUTTON_PRESSED(BUTTON_B)) {
        initializeInstructions();
    }

}

void initializeInstructions() {
    DMANow(3, instructionScreenTiles, &CHARBLOCK[0], instructionScreenTilesLen/2);
    DMANow(3, instructionScreenMap, &SCREENBLOCK[30], instructionScreenMapLen/2);
    DMANow(3, instructionScreenPal, PALETTE, instructionScreenPalLen/2);
    REG_DISPCTL = BG_ENABLE(1) | MODE(0);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL | BG_4BPP; 
    GAMESTATE = INSTRUCTIONS;
}

void waitOnInstructions() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        initializeGame();
        createSprites();
    
    }
    if(BUTTON_PRESSED(BUTTON_B)) {
        initializeMenu();
    }
}


void initializeGame() {
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    DMANow(3, pondSceneTiles, &CHARBLOCK[0], pondSceneTilesLen/2);
    DMANow(3, pondSceneMap, &SCREENBLOCK[30], pondSceneMapLen/2);
    DMANow(3, pondScenePal, PALETTE, pondScenePalLen/2);
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) |  SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL | BG_4BPP; 

    DMANow(3, mtnBackgroundTiles, &CHARBLOCK[2], mtnBackgroundTilesLen/2);
    DMANow(3, mtnBackgroundMap, &SCREENBLOCK[25], mtnBackgroundMapLen/2);

    

    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(25) | BG_SIZE_LARGE | BG_4BPP; 
    // REG_BG1VOFF = 40;
    shadowOAM[100].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y(4);
    shadowOAM[100].attr1 = ATTR1_MEDIUM | ATTR1_X(4);
    shadowOAM[100].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6,6);



    DMANow(3, koiSpritedraftTiles, &CHARBLOCK[4], koiSpritedraftTilesLen/2);
    DMANow(3, koiSpritedraftPal, SPRITEPALETTE, koiSpritedraftPalLen/2);
    GAMESTATE = GAME;
    SPRITEPALETTE[7] = WHITE;
    


}

void createSprites() {
    fisher.x = 120;
    fisher.y = 125;

    for (int i = 0; i < 15; i++) {
        koi[i].x = rand() % 240;
        koi[i].y = rand() % 120;
        koi[i].direction = rand() % 4;
        koi[i].frame = rand() % 3;
        koi[i].timeUntilNextFrame = 5;
        koi[i].numOfFrames = 3;
        koi[i].active = 1;
        koi[i].dx = rand() % 2 + 1;
        koi[i].dy = rand() % 2 + 1;
    }

    for (int i = 0; i < 4; i++) {
        falcons[i].x = rand() % 240;
        falcons[i].y = 135;
        falcons[i].direction = rand() % 2;
        falcons[i].dx = 1;
        falcons[i].frame = 0;
        falcons[i].timeUntilNextFrame = 10;
        falcons[i].numOfFrames = 3;
        falcons[i].active = 1;
    }

    rock.direction = 0;
    SPRITEPALETTE[7] = WHITE;



}

void updateGame() {
    if(SCENE == FISHING) {
        updateFisher();
        updateKoi();
        if (frameCount % 10 == 0) {
        updateFalcons();
        }
        if(rock.y > -100) {
            for (int i = 0; i < 4; i++) {
            if(collision(falcons[i].x, falcons[i].y, 16, 16, rock.x, rock.y, 16, 16)) {
                falcons[i].x = -100; 
                shadowOAM[i + 5].attr0 = ATTR0_HIDE;
            }
            }
            updateRock();
        }
        if(BUTTON_PRESSED(BUTTON_START)) {
            initializePause();
            GAMESTATE = PAUSE;
        }

        int activeKoi = 15;

        for (int i = 0; i < 15; i++) {
            if (koi[i].active == 0) {
                activeKoi--;
            }
        }
        if (activeKoi == 0) {
            hideSprites();
            initializeTravel();
            createGrassSprites();
            SCENE = TRAVEL;
            
        }
        }
        if(BUTTON_PRESSED(BUTTON_LSHOULDER)) {
            hideSprites();
            initializeTravel();
            createGrassSprites();
            SPRITEPALETTE[7] = WHITE;
            SCENE = TRAVEL;
        }
    
    if(SCENE == HOME) {
        updateHomePond();
    }
    if(SCENE == TRAVEL) {
        updateTravel();
        if(plantsCollected > 12 && player.x > 495) {
            hideSprites();
            initializeHome();
            createPondSprites();
            SCENE = HOME;

        }
        if(BUTTON_PRESSED(BUTTON_START)) {
            hideSprites();
            initializeHome();
            createPondSprites();
            SCENE = HOME;
    }
        
    }


    
}


void initializeEnd() {
    DMANow(3, endSceneTiles, &CHARBLOCK[0], endSceneTilesLen/2);
    DMANow(3, endSceneMap, &SCREENBLOCK[30], endSceneMapLen/2);
    DMANow(3, endScenePal, PALETTE, endScenePalLen/2);
    REG_DISPCTL = BG_ENABLE(1) | MODE(0);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL | BG_4BPP; 
    GAMESTATE = END;
}

void waitOnEnd() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        initializeMenu();

    }
}
void initializePause() {
    
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[30], pauseScreenMapLen/2);
    DMANow(3, pauseScreenPal, PALETTE, pauseScreenPalLen/2);
    REG_DISPCTL = BG_ENABLE(1) | MODE(0);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL | BG_4BPP; 

}
void waitOnPause() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        if (SCENE == FISHING) {
        initializeGame();
        GAMESTATE = GAME;
        }
        if (SCENE == HOME) {
        initializeHome();
        GAMESTATE = GAME;
        }
    }
}

void updateFisher() {
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        fisher.x += 1;
        if (fisher.x + 30 > SCREENWIDTH) {
            fisher.x = SCREENWIDTH - 30;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        fisher.x -= 1;
        if(fisher.x < 0) {
            fisher.x = 0;
        }
    }
    shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(fisher.y);
    shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(fisher.x);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 0);

    if(BUTTON_PRESSED(BUTTON_B)) {
        rock.x = fisher.x;
        rock.y = fisher.y;
        rock.active = 1;
        rock.direction = 1;
    }
}
void updateRock() {
    rock.y--;
    
    
    shadowOAM[9].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(rock.y);
    shadowOAM[9].attr1 = ATTR1_MEDIUM | ATTR1_X(rock.x);
    shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 0);
    if (rock.y < 0) {
        rock.active = -100;
        shadowOAM[9].attr0 = ATTR0_HIDE;
        
    }
}


void updateKoi() {
        for (int i = 0; i < 15; i++) {
            koi[i].timeUntilNextFrame--;
            if (koi[i].timeUntilNextFrame == 0 && koi[i].active) {
                koi[i].timeUntilNextFrame = 5;
                koi[i].frame = (koi[i].frame + 1) % 3;
            }

            if (frameCount % 10 == 0 && koi[i].active) {
                if (rock.direction == 1) {
                        if (koi[i].x < fisher.x) {
                            koi[i].x += koi[i].dx;
                            koi[i].direction = RIGHT;
                        }
                        if (koi[i].y < fisher.y) {
                            koi[i].y += koi[i].dy;
                            koi[i].direction = DOWN;
                        }
                        if (koi[i].x > fisher.x) {
                            koi[i].x -= koi[i].dx;
                            koi[i].direction = LEFT;
                        }
                        if (koi[i].y > fisher.y) {
                            koi[i].y -= koi[i].dy;
                            koi[i].direction = UP;
                        }

                    }
                else{
                switch (koi[i].direction) {
                    case(DOWN):
                    koi[i].y += koi[i].dy;
                    koi[i].x += koi[i].dx;
                    if (koi[i].x > 240) {koi[i].direction = LEFT;}
                    if (koi[i].y > 125) {koi[i].direction = UP;}
                    break;
                    case(LEFT):
                    koi[i].y += koi[i].dy;
                    koi[i].x -= koi[i].dx;
                    if (koi[i].y > 125) {koi[i].direction = UP;}
                    if (koi[i].x < 0) {koi[i].direction = RIGHT;}

                    break;
                    case(RIGHT):
                    koi[i].y -= koi[i].dy;
                    koi[i].x += koi[i].dx;
                    if (koi[i].x > 240) {koi[i].direction = LEFT;}
                    if (koi[i].y < 30) {koi[i].direction = DOWN;}
                    break;
                    case(UP):
                    koi[i].y -= koi[i].dy;
                    koi[i].x -= koi[i].dx;
                    if (koi[i].y < 30) {koi[i].direction = DOWN;}
                    if (koi[i].x < 0) {koi[i].direction = RIGHT;}
                    
                    break;
                }
                }

                shadowOAM[i + 10].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(koi[i].y);
                shadowOAM[i + 10].attr1 = ATTR1_SMALL | ATTR1_X(koi[i].x);
                shadowOAM[i + 10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(koi[i].frame * 2, koi[i].direction * 2);

            }
            if(BUTTON_PRESSED(BUTTON_SELECT)) {
                if(collision(koi[i].x, koi[i].y, 15, 15, fisher.x, fisher.y, 14, 20)) {
                    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(3);
                    REG_SND2FREQ = NOTE_GS5 | SND_RESET;
                    shadowOAM[i + 10].attr0 = ATTR0_HIDE;
                    koi[i].active = 0;

                }

            }
            for(int j = 0; j< 4; j++) {
            if(collision(koi[i].x, koi[i].y, 15, 15, falcons[j].x, falcons[j].y, 14, 20)) {
                    
                    shadowOAM[i + 10].attr0 = ATTR0_HIDE;
                    koi[i].active = 0;

                }
            }
            

        }
    }
    


void updateFalcons() {
    for (int i = 0; i < 4; i++) {
        if(falcons[i].x > -100) {
        if (falcons[i].direction == 0) { 
            falcons[i].x += falcons[i].dx; 
        } else {falcons[i].x -= falcons[i].dx; }
        shadowOAM[i + 5].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(falcons[i].y);
        shadowOAM[i + 5].attr1 = ATTR1_SMALL | ATTR1_X(falcons[i].x);
        shadowOAM[i + 5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6,0);
        }
    
    }
}
