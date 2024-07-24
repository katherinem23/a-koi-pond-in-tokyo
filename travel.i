# 1 "travel.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "travel.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp_t)(void);






extern volatile unsigned short *videoBuffer;
# 40 "gba.h"
void waitForVBlank();
# 58 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 74 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 106 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "travel.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 3 "travel.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 4 "travel.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 63 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int dx;
    int dy;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int active;
    int hide;
    int color;
} SPRITE;
# 5 "travel.c" 2
# 1 "pondScene.h" 1
# 22 "pondScene.h"
extern const unsigned short pondSceneTiles[2240];


extern const unsigned short pondSceneMap[1024];


extern const unsigned short pondScenePal[256];
# 6 "travel.c" 2
# 1 "spritesheet.h" 1
# 22 "spritesheet.h"
extern const unsigned short spritesheetTiles[1120];


extern const unsigned short spritesheetMap[1024];


extern const unsigned short spritesheetPal[256];
# 7 "travel.c" 2
# 1 "koiSpriteDraft.h" 1
# 21 "koiSpriteDraft.h"
extern const unsigned short koiSpritedraftTiles[16384];


extern const unsigned short koiSpritedraftPal[256];
# 8 "travel.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[7168];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[240];
# 9 "travel.c" 2
# 1 "instructionScreen.h" 1
# 22 "instructionScreen.h"
extern const unsigned short instructionScreenTiles[6848];


extern const unsigned short instructionScreenMap[1024];


extern const unsigned short instructionScreenPal[240];
# 10 "travel.c" 2
# 1 "pauseScreen.h" 1
# 22 "pauseScreen.h"
extern const unsigned short pauseScreenTiles[5040];


extern const unsigned short pauseScreenMap[1024];


extern const unsigned short pauseScreenPal[240];
# 11 "travel.c" 2
# 1 "endScene.h" 1
# 22 "endScene.h"
extern const unsigned short endSceneTiles[4912];


extern const unsigned short endSceneMap[1024];


extern const unsigned short endScenePal[240];
# 12 "travel.c" 2
# 1 "koiSpritedraft.h" 1
# 13 "travel.c" 2
# 1 "pondTime.h" 1
void initializeHome();
void updateHomePond();
void createMenuBar();
void createCursor();
void createSprite(int i);
void cursorMoveSprite(int i);
void updateActiveKoi();
void createPondSprites();
void animatePond();

typedef struct {
    int x;
    int y;
    int dx;
    int dy;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int active;
    int hide;
    int type;
    int placed;
    int color;
} PONDOBJ;
# 14 "travel.c" 2
# 1 "pondSceneDraft.h" 1
# 22 "pondSceneDraft.h"
extern const unsigned short pondSceneDraftTiles[672];


extern const unsigned short pondSceneDraftMap[1024];


extern const unsigned short pondSceneDraftPal[256];
# 15 "travel.c" 2
# 1 "game.h" 1
void initializeMenu();
void waitOnMenu();

void initializeGame();
void waitOnGame();

void initializeInstructions();
void waitOnInstructions();

void initializePause();
void waitOnPause();

void initializeEnd();
void waitOnEnd();




void createSprites();
void updateGame();
void updateFisher();
void updateKoi();
void updateFalcons();
void updateRock();


SPRITE koi[15];
SPRITE fisher;
SPRITE falcons[4];
SPRITE rock;
int frameCount;
int catchTime;
# 16 "travel.c" 2
# 1 "transitionMap.h" 1
# 22 "transitionMap.h"
extern const unsigned short transitionMapTiles[624];


extern const unsigned short transitionMapMap[4096];


extern const unsigned short transitionMapPal[256];
# 17 "travel.c" 2
# 1 "mtnBackground.h" 1
# 22 "mtnBackground.h"
extern const unsigned short mtnBackgroundTiles[368];


extern const unsigned short mtnBackgroundMap[4096];


extern const unsigned short mtnBackgroundPal[256];
# 18 "travel.c" 2
# 1 "travel.h" 1
void initializeTravel();
void updateTravel();
void drawScene();
void createGrassSprites();
void updatePlants();

int mtnHoff;
int mtnVoff;

int grassHoff;
int grassVoff;

int plantsCollected;




SPRITE player;


typedef struct {
    int x;
    int y;
    int dx;
    int dy;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int active;
    int hide;
    int type;
    int placed;
    int color;

} GRASSOBJ;
# 19 "travel.c" 2
# 1 "music.h" 1



typedef struct {

    char* title;
    unsigned short color;

    unsigned int sampleRate;
    unsigned int length;
    signed char* data;

} SONG;

SONG japanGarden;



void setupSounds();
void playSong(const signed char* sound, int length, int loops);
# 62 "music.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 148 "music.h"
enum {
  REST = 0,
  NOTE_C2 =44,
  NOTE_CS2 =157,
  NOTE_D2 =263,
  NOTE_DS2 =363,
  NOTE_E2 =457,
  NOTE_F2 =547,
  NOTE_FS2 =631,
  NOTE_G2 =711,
  NOTE_GS2 =786,
  NOTE_A2 =856,
  NOTE_AS2 =923,
  NOTE_B2 =986,
  NOTE_C3 =1046,
  NOTE_CS3 =1102,
  NOTE_D3 =1155,
  NOTE_DS3 =1205,
  NOTE_E3 =1253,
  NOTE_F3 =1297,
  NOTE_FS3 =1339,
  NOTE_G3 =1379,
  NOTE_GS3 =1417,
  NOTE_A3 =1452,
  NOTE_AS3 =1486,
  NOTE_B3 =1517,
  NOTE_C4 =1547,
  NOTE_CS4 =1575,
  NOTE_D4 =1602,
  NOTE_DS4 =1627,
  NOTE_E4 =1650,
  NOTE_F4 =1673,
  NOTE_FS4 =1694,
  NOTE_G4 =1714,
  NOTE_GS4 =1732,
  NOTE_A4 =1750,
  NOTE_AS4 =1767,
  NOTE_B4 =1783,
  NOTE_C5 =1798,
  NOTE_CS5 =1812,
  NOTE_D5 =1825,
  NOTE_DS5 =1837,
  NOTE_E5 =1849,
  NOTE_F5 =1860,
  NOTE_FS5 =1871,
  NOTE_G5 =1881,
  NOTE_GS5 =1890,
  NOTE_A5 =1899,
  NOTE_AS5 =1907,
  NOTE_B5 =1915,
  NOTE_C6 =1923,
  NOTE_CS6 =1930,
  NOTE_D6 =1936,
  NOTE_DS6 =1943,
  NOTE_E6 =1949,
  NOTE_F6 =1954,
  NOTE_FS6 =1959,
  NOTE_G6 =1964,
  NOTE_GS6 =1969,
  NOTE_A6 =1974,
  NOTE_AS6 =1978,
  NOTE_B6 =1982,
  NOTE_C7 =1985,
  NOTE_CS7 =1989,
  NOTE_D7 =1992,
  NOTE_DS7 =1995,
  NOTE_E7 =1998,
  NOTE_F7 =2001,
  NOTE_FS7 =2004,
  NOTE_G7 =2006,
  NOTE_GS7 =2009,
  NOTE_A7 =2011,
  NOTE_AS7 =2013,
  NOTE_B7 =2015,
  NOTE_C8 =2017
} NOTES;
# 20 "travel.c" 2

enum {DOWN, LEFT, RIGHT, UP};
int direction;
int turnOrange;
GRASSOBJ plants[15];
int plantColor;

void initializeTravel() {
    hideSprites();
    turnOrange = 0;
    plantColor = 0;
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    DMANow(3, transitionMapTiles, &((charblock *)0x06000000)[0], 1248/2);
    DMANow(3, transitionMapMap, &((screenblock *)0x6000000)[10], 8192/2);
    DMANow(3, transitionMapPal, ((unsigned short *)0x5000000), 512/2);



    DMANow(3, mtnBackgroundTiles, &((charblock *)0x06000000)[2], 736/2);
    DMANow(3, mtnBackgroundMap, &((screenblock *)0x6000000)[25], 8192/2);


    DMANow(3, koiSpritedraftPal, ((u16 *)0x5000200), 512/2);

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) |(1 << (8 + (1 % 4)))| (1 << 12);
    (*(volatile unsigned short*)0x4000008) = ((0) << 2) | ((10) << 8) | (3 << 14);
    (*(volatile unsigned short*)0x400000A) = ((2) << 2) | ((25) << 8) | (3 << 14);
    ((u16 *)0x5000200)[7] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);

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



    if ((~(buttons) & ((1<<6)))) {
        player.direction = UP;


        if(player.y > 150) {
            player.y-=1;
       }
    }
    if ((~(buttons) & ((1<<7)))) {

        player.direction = DOWN;
        if(player.y < 350) {
        player.y+= 1;
        }





    }
    if ((~(buttons) & ((1<<5)))) {

        player.direction = LEFT;






        if(player.x > 0) {
        player.x-=1;
        }
    }
    if ((~(buttons) & ((1<<4)))) {

        player.direction = RIGHT;






        if(player.x < 512 - player.width) {
        player.x+=1;
        }


    }




    grassHoff = player.x - (240 - player.width) / 2;
    grassVoff = player.y - (160 - player.height) / 2;
    if (grassHoff < 0) {
        grassHoff = 0;
    }
    if (grassVoff < 0) {
        grassVoff = 0;
    }
    if (grassHoff > 512 - 240) {
        grassHoff = 512 - 240;
    }
    if (grassVoff > 350 - 160) {
        grassVoff = 350 - 160;
    }
    shadowOAM[0].attr0 = (0<<13) | (0<<14) | ((player.y - grassVoff) & 0xFF);
    shadowOAM[0].attr1 = (1<<14) | ((player.x - grassHoff) & 0x1FF);
    shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (22)) & 0x3FF);


    for (int i = 0; i < 15; i++) {
        if((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                if(collision(plants[i].x, plants[i].y, 15, 15, player.x, player.y, 15, 15)) {
                    shadowOAM[i + 1].attr0 = (2<<8);
                    *(volatile u16*)0x04000068 = (((5) & 15) << 12) | (((3) & 7) << 8);
                    *(volatile u16*)0x0400006C = NOTE_GS5 | (1<<15);
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
            ((u16 *)0x5000200)[2] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);

        }
        if(plants[i].frame == 1) {
            ((u16 *)0x5000200)[2] = (((0) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);

        }
        if(plants[i].frame == 2) {
            ((u16 *)0x5000200)[2] = (((31) & 31) | ((24) & 31) << 5 | ((0) & 31) << 10);

        }



        shadowOAM[i+1].attr0 = (0<<13) | (0<<14) | ((plants[i].y - grassVoff) & 0xFF);
        shadowOAM[i+1].attr1 = (1<<14) | ((plants[i].x - grassHoff) & 0x1FF);

        if(plants[i].type == 0) {shadowOAM[i+1].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (10)) & 0x3FF);}
        if(plants[i].type == 1) {shadowOAM[i+1].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (14)) & 0x3FF);}
        if(plants[i].type == 2) {shadowOAM[i+1].attr2 = (((0) & 0xF) << 12) | (((plants[i].frame * 2) * 32 + (16)) & 0x3FF);}
        if(plants[i].type == 3) {shadowOAM[i+1].attr2 = (((0) & 0xF) << 12) | (((plants[i].frame * 2) * 32 + (18)) & 0x3FF);}
        }

    }

    drawScene();
}

void drawScene() {
    (*(volatile unsigned short *)0x04000010) = grassHoff;
    (*(volatile unsigned short *)0x04000012) = grassVoff;

    (*(volatile unsigned short *)0x04000014) = mtnHoff;
    (*(volatile unsigned short *)0x04000016) = mtnVoff;

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}


void updatePlants() {
    for (int i = 0; i < 15; i++) {
        if((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                if(collision(plants[i].x, plants[i].y, 15, 15, player.x, player.y, 15, 15)) {
                    shadowOAM[i + 1].attr0 = (2<<8);
                    plants[i].active = 0;
                }
        }
        if(plants[i].active) {
            plants[i].timeUntilNextFrame--;
            if(plants[i].timeUntilNextFrame == 0) {
                plants[i].frame = (plants[i].frame + 1) %3;
                plants[i].timeUntilNextFrame = 10;
        }


        shadowOAM[i+1].attr0 = (0<<13) | (0<<14) | ((plants[i].y) & 0xFF);
        shadowOAM[i+1].attr1 = (1<<14) | ((plants[i].x) & 0x1FF);
        shadowOAM[i+1].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (16)) & 0x3FF);
        }

    }
}
