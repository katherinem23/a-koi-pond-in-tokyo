# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 3 "game.c" 2
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
# 4 "game.c" 2
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
# 5 "game.c" 2
# 1 "pondScene.h" 1
# 22 "pondScene.h"
extern const unsigned short pondSceneTiles[2240];


extern const unsigned short pondSceneMap[1024];


extern const unsigned short pondScenePal[256];
# 6 "game.c" 2
# 1 "spritesheet.h" 1
# 22 "spritesheet.h"
extern const unsigned short spritesheetTiles[1120];


extern const unsigned short spritesheetMap[1024];


extern const unsigned short spritesheetPal[256];
# 7 "game.c" 2
# 1 "koiSpriteDraft.h" 1
# 21 "koiSpriteDraft.h"
extern const unsigned short koiSpritedraftTiles[16384];


extern const unsigned short koiSpritedraftPal[256];
# 8 "game.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[7168];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[240];
# 9 "game.c" 2
# 1 "instructionScreen.h" 1
# 22 "instructionScreen.h"
extern const unsigned short instructionScreenTiles[6848];


extern const unsigned short instructionScreenMap[1024];


extern const unsigned short instructionScreenPal[240];
# 10 "game.c" 2
# 1 "pauseScreen.h" 1
# 22 "pauseScreen.h"
extern const unsigned short pauseScreenTiles[5040];


extern const unsigned short pauseScreenMap[1024];


extern const unsigned short pauseScreenPal[240];
# 11 "game.c" 2
# 1 "endScene.h" 1
# 22 "endScene.h"
extern const unsigned short endSceneTiles[4912];


extern const unsigned short endSceneMap[1024];


extern const unsigned short endScenePal[240];
# 12 "game.c" 2
# 1 "pondSceneDraft.h" 1
# 22 "pondSceneDraft.h"
extern const unsigned short pondSceneDraftTiles[672];


extern const unsigned short pondSceneDraftMap[1024];


extern const unsigned short pondSceneDraftPal[256];
# 13 "game.c" 2
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
# 14 "game.c" 2
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
# 15 "game.c" 2
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
# 16 "game.c" 2
# 1 "mtnBackground.h" 1
# 22 "mtnBackground.h"
extern const unsigned short mtnBackgroundTiles[368];


extern const unsigned short mtnBackgroundMap[4096];


extern const unsigned short mtnBackgroundPal[256];
# 17 "game.c" 2

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
    DMANow(3, startScreenTiles, &((charblock *)0x06000000)[0], 14336/2);
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, startScreenPal, ((unsigned short *)0x5000000), 480/2);
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4))) | ((0) & 7);
    (*(volatile unsigned short*)0x400000A) = ((0) << 2) | ((30) << 8) | (0 << 14) | (0 << 7);
    GAMESTATE = MENU;
}
void waitOnMenu() {
    if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        initializeGame();
        createSprites();
    }
    if((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        initializeInstructions();
    }

}

void initializeInstructions() {
    DMANow(3, instructionScreenTiles, &((charblock *)0x06000000)[0], 13696/2);
    DMANow(3, instructionScreenMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, instructionScreenPal, ((unsigned short *)0x5000000), 480/2);
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4))) | ((0) & 7);
    (*(volatile unsigned short*)0x400000A) = ((0) << 2) | ((30) << 8) | (0 << 14) | (0 << 7);
    GAMESTATE = INSTRUCTIONS;
}

void waitOnInstructions() {
    if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        initializeGame();
        createSprites();

    }
    if((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        initializeMenu();
    }
}


void initializeGame() {
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    DMANow(3, pondSceneTiles, &((charblock *)0x06000000)[0], 4480/2);
    DMANow(3, pondSceneMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, pondScenePal, ((unsigned short *)0x5000000), 512/2);
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*)0x4000008) = ((0) << 2) | ((30) << 8) | (0 << 14) | (0 << 7);

    DMANow(3, mtnBackgroundTiles, &((charblock *)0x06000000)[2], 736/2);
    DMANow(3, mtnBackgroundMap, &((screenblock *)0x6000000)[25], 8192/2);



    (*(volatile unsigned short*)0x400000A) = ((2) << 2) | ((25) << 8) | (3 << 14) | (0 << 7);

    shadowOAM[100].attr0 = (0<<13) | (1<<14) | ((4) & 0xFF);
    shadowOAM[100].attr1 = (2<<14) | ((4) & 0x1FF);
    shadowOAM[100].attr2 = (((0) & 0xF) << 12) | (((6) * 32 + (6)) & 0x3FF);



    DMANow(3, koiSpritedraftTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, koiSpritedraftPal, ((u16 *)0x5000200), 512/2);
    GAMESTATE = GAME;
    ((u16 *)0x5000200)[7] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);



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
    ((u16 *)0x5000200)[7] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);



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
                shadowOAM[i + 5].attr0 = (2<<8);
            }
            }
            updateRock();
        }
        if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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
        if((!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9))))) {
            hideSprites();
            initializeTravel();
            createGrassSprites();
            ((u16 *)0x5000200)[7] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
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
        if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
            hideSprites();
            initializeHome();
            createPondSprites();
            SCENE = HOME;
    }

    }



}


void initializeEnd() {
    DMANow(3, endSceneTiles, &((charblock *)0x06000000)[0], 9824/2);
    DMANow(3, endSceneMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, endScenePal, ((unsigned short *)0x5000000), 480/2);
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4))) | ((0) & 7);
    (*(volatile unsigned short*)0x400000A) = ((0) << 2) | ((30) << 8) | (0 << 14) | (0 << 7);
    GAMESTATE = END;
}

void waitOnEnd() {
    if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        initializeMenu();

    }
}
void initializePause() {

    DMANow(3, pauseScreenTiles, &((charblock *)0x06000000)[0], 10080/2);
    DMANow(3, pauseScreenMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, pauseScreenPal, ((unsigned short *)0x5000000), 480/2);
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4))) | ((0) & 7);
    (*(volatile unsigned short*)0x400000A) = ((0) << 2) | ((30) << 8) | (0 << 14) | (0 << 7);

}
void waitOnPause() {
    if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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
    if ((~(buttons) & ((1<<4)))) {
        fisher.x += 1;
        if (fisher.x + 30 > 240) {
            fisher.x = 240 - 30;
        }
    }
    if ((~(buttons) & ((1<<5)))) {
        fisher.x -= 1;
        if(fisher.x < 0) {
            fisher.x = 0;
        }
    }
    shadowOAM[0].attr0 = (0<<13) | (2<<14) | ((fisher.y) & 0xFF);
    shadowOAM[0].attr1 = (2<<14) | ((fisher.x) & 0x1FF);
    shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (8)) & 0x3FF);

    if((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        rock.x = fisher.x;
        rock.y = fisher.y;
        rock.active = 1;
        rock.direction = 1;
    }
}
void updateRock() {
    rock.y--;


    shadowOAM[9].attr0 = (0<<13) | (2<<14) | ((rock.y) & 0xFF);
    shadowOAM[9].attr1 = (2<<14) | ((rock.x) & 0x1FF);
    shadowOAM[9].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (20)) & 0x3FF);
    if (rock.y < 0) {
        rock.active = -100;
        shadowOAM[9].attr0 = (2<<8);

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

                shadowOAM[i + 10].attr0 = (0<<13) | (0<<14) | ((koi[i].y) & 0xFF);
                shadowOAM[i + 10].attr1 = (1<<14) | ((koi[i].x) & 0x1FF);
                shadowOAM[i + 10].attr2 = (((0) & 0xF) << 12) | (((koi[i].direction * 2) * 32 + (koi[i].frame * 2)) & 0x3FF);

            }
            if((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                if(collision(koi[i].x, koi[i].y, 15, 15, fisher.x, fisher.y, 14, 20)) {
                    *(volatile u16*)0x04000068 = (((5) & 15) << 12) | (((3) & 7) << 8);
                    *(volatile u16*)0x0400006C = NOTE_GS5 | (1<<15);
                    shadowOAM[i + 10].attr0 = (2<<8);
                    koi[i].active = 0;

                }

            }
            for(int j = 0; j< 4; j++) {
            if(collision(koi[i].x, koi[i].y, 15, 15, falcons[j].x, falcons[j].y, 14, 20)) {

                    shadowOAM[i + 10].attr0 = (2<<8);
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
        shadowOAM[i + 5].attr0 = (0<<13) | (0<<14) | ((falcons[i].y) & 0xFF);
        shadowOAM[i + 5].attr1 = (1<<14) | ((falcons[i].x) & 0x1FF);
        shadowOAM[i + 5].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (6)) & 0x3FF);
        }

    }
}
