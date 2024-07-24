# 1 "pondTime.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "pondTime.c"
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
# 2 "pondTime.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 3 "pondTime.c" 2
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
# 4 "pondTime.c" 2
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
# 5 "pondTime.c" 2
# 1 "pondScene.h" 1
# 22 "pondScene.h"
extern const unsigned short pondSceneTiles[2240];


extern const unsigned short pondSceneMap[1024];


extern const unsigned short pondScenePal[256];
# 6 "pondTime.c" 2
# 1 "spritesheet.h" 1
# 22 "spritesheet.h"
extern const unsigned short spritesheetTiles[1120];


extern const unsigned short spritesheetMap[1024];


extern const unsigned short spritesheetPal[256];
# 7 "pondTime.c" 2
# 1 "koiSpriteDraft.h" 1
# 21 "koiSpriteDraft.h"
extern const unsigned short koiSpritedraftTiles[16384];


extern const unsigned short koiSpritedraftPal[256];
# 8 "pondTime.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[7168];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[240];
# 9 "pondTime.c" 2
# 1 "instructionScreen.h" 1
# 22 "instructionScreen.h"
extern const unsigned short instructionScreenTiles[6848];


extern const unsigned short instructionScreenMap[1024];


extern const unsigned short instructionScreenPal[240];
# 10 "pondTime.c" 2
# 1 "pauseScreen.h" 1
# 22 "pauseScreen.h"
extern const unsigned short pauseScreenTiles[5040];


extern const unsigned short pauseScreenMap[1024];


extern const unsigned short pauseScreenPal[240];
# 11 "pondTime.c" 2
# 1 "endScene.h" 1
# 22 "endScene.h"
extern const unsigned short endSceneTiles[4912];


extern const unsigned short endSceneMap[1024];


extern const unsigned short endScenePal[240];
# 12 "pondTime.c" 2
# 1 "koiSpritedraft.h" 1
# 13 "pondTime.c" 2
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
# 14 "pondTime.c" 2
# 1 "pondSceneDraft.h" 1
# 22 "pondSceneDraft.h"
extern const unsigned short pondSceneDraftTiles[672];


extern const unsigned short pondSceneDraftMap[1024];


extern const unsigned short pondSceneDraftPal[256];
# 15 "pondTime.c" 2
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
# 16 "pondTime.c" 2


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

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    DMANow(3, pondSceneDraftTiles, &((charblock *)0x06000000)[1], 1344/2);
    DMANow(3, pondSceneDraftMap, &((screenblock *)0x6000000)[12], 2048/2);
    DMANow(3, pondSceneDraftPal, ((unsigned short *)0x5000000), 512/2);
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*)0x400000A) = ((1) << 2) | ((12) << 8) | (0 << 14) | (0 << 7);
    DMANow(3, koiSpritedraftTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, koiSpritedraftPal, ((u16 *)0x5000200), 512/2);
    (*(volatile unsigned short *)0x04000014) = 0;
    (*(volatile unsigned short *)0x04000016) = 0;
    ((u16 *)0x5000200)[7] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
    shadowOAM[101].attr0 = (0<<13) | (1<<14) | ((2) & 0xFF);
    shadowOAM[101].attr1 = (2<<14) | ((210) & 0x1FF);
    shadowOAM[101].attr2 = (((0) & 0xF) << 12) | (((4) * 32 + (6)) & 0x3FF);
}

void updateHomePond() {

    if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
            animateP = 1;
            ((screenblock *)0x6000000)[12].tilemap[((13) * (32) + (3))] = ((screenblock *)0x6000000)[12].tilemap[((20) * (32) + (0))];
            ((screenblock *)0x6000000)[12].tilemap[((12) * (32) + (8))] = ((screenblock *)0x6000000)[12].tilemap[((20) * (32) + (1))];
            ((screenblock *)0x6000000)[12].tilemap[((19) * (32) + (5))] = ((screenblock *)0x6000000)[12].tilemap[((20) * (32) + (2))];
            ((screenblock *)0x6000000)[12].tilemap[((8) * (32) + (7))] = ((screenblock *)0x6000000)[12].tilemap[((20) * (32) + (0))];
            ((screenblock *)0x6000000)[12].tilemap[((9) * (32) + (2))] = ((screenblock *)0x6000000)[12].tilemap[((20) * (32) + (2))];

        }
    frameCount++;
    if(animateP) {
        animatePond();
    }

    if((!(~(oldButtons) & ((1<<8))) && (~(buttons) & ((1<<8))))) {
        initializeEnd();
        SCENE = FISHING;
    }

    if(cursorMove) {

        if((!(~(oldButtons) & ((1<<4))) && (~(buttons) & ((1<<4)))) && cursor.x < 111) {
            cursor.x += 20;
            selectedSprite++;
        }
        if((!(~(oldButtons) & ((1<<5))) && (~(buttons) & ((1<<5)))) && cursor.x > 29) {
            cursor.x -= 20;
            selectedSprite--;
        }
        shadowOAM[1].attr0 = (0<<13) | (0<<14) | ((cursor.y) & 0xFF);
        shadowOAM[1].attr1 = (1<<14) | ((cursor.x) & 0x1FF);

    }
    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        cursorMove = 0;
        createSprite(selectedSprite);
    }

    if(!cursorMove) {

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
    if ((~(buttons) & ((1<<4)))) {
            pondStuff[pondStuffCount].x += 1;
            if(pondStuff[pondStuffCount].x > 223) {
                pondStuff[i].x = 223;
            }
    }
    if ((~(buttons) & ((1<<5)))) {
        pondStuff[pondStuffCount].x -= 1;
        if(pondStuff[pondStuffCount].x < 0) {
            pondStuff[pondStuffCount].x = 0;
        }
    }
    if ((~(buttons) & ((1<<6)))) {
            pondStuff[pondStuffCount].y -= 1;
            if(pondStuff[pondStuffCount].y < 0) {
                pondStuff[pondStuffCount].y = 0;
            }
    }
    if ((~(buttons) & ((1<<7)))) {
        pondStuff[pondStuffCount].y += 1;
        if(pondStuff[pondStuffCount].y > 143) {
            pondStuff[pondStuffCount].y = 143;
        }
    }

    shadowOAM[pondStuffCount+20].attr0 = (0<<13) | (0<<14) | ((pondStuff[pondStuffCount].y) & 0xFF);
    shadowOAM[pondStuffCount+20].attr1 = (1<<14) | ((pondStuff[pondStuffCount].x) & 0x1FF);
    if(i<3) {shadowOAM[pondStuffCount + 20].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (i*2)) & 0x3FF);}
    if( i == 3) {shadowOAM[pondStuffCount + 20].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (10)) & 0x3FF);}
    if( i > 3) {shadowOAM[pondStuffCount + 20].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (i*2 + 6)) & 0x3FF);}


    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        if(((pondStuff[pondStuffCount].y > 70 && pondStuff[pondStuffCount].x > 100)) || pondStuff[pondStuffCount].type == NONKOI) {

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
        shadowOAM[pondStuffCount + 20].attr0 = (0<<13) | (0<<14) | ((pondStuff[i].y) & 0xFF);
        shadowOAM[pondStuffCount + 20].attr1 = (1<<14) | ((pondStuff[i].x) & 0x1FF);
        shadowOAM[pondStuffCount + 20].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (i*2)) & 0x3FF);
    } else {
        pondStuff[pondStuffCount].x = i*20 + 10;
        pondStuff[pondStuffCount].y = 25;
        pondStuff[pondStuffCount].type = NONKOI;
        pondStuff[pondStuffCount].timeUntilNextFrame = 10;
        shadowOAM[pondStuffCount + 20].attr0 = (0<<13) | (0<<14) | ((pondStuff[i].y) & 0xFF);
        shadowOAM[pondStuffCount + 20].attr1 = (1<<14) | ((pondStuff[i].x) & 0x1FF);
        if( i == 3) {shadowOAM[pondStuffCount + 20].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (10)) & 0x3FF);}
        if( i > 3) {shadowOAM[pondStuffCount + 20].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (i*2 + 6)) & 0x3FF);}
    }
    pondStuff[pondStuffCount].active = 1;
    pondStuff[pondStuffCount].placed = 0;
    pondStuff[pondStuffCount].frame = 0;
    }

void createMenuBar() {
    for (int i=0;i<7;i++) {
        pondObjects[i].x = i*20 + 10;
        pondObjects[i].y = 5;
        shadowOAM[i + 10].attr0 = (0<<13) | (0<<14) | ((pondObjects[i].y) & 0xFF);
        shadowOAM[i + 10].attr1 = (1<<14) | ((pondObjects[i].x) & 0x1FF);
        if (i < 3) {shadowOAM[i + 10].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (i*2)) & 0x3FF);}
        if( i == 3) {shadowOAM[i + 10].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (10)) & 0x3FF);}
        if( i > 3) {shadowOAM[i + 10].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (i*2 + 6)) & 0x3FF);}
    }

}

void createCursor() {
    cursor.x = 10;
    cursor.y = 5;
    shadowOAM[1].attr0 = (0<<13) | (0<<14) | ((cursor.y) & 0xFF);
    shadowOAM[1].attr1 = (1<<14) | ((cursor.x) & 0x1FF);
    shadowOAM[1].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (12)) & 0x3FF);
}

void updateActiveKoi() {
    for (int i = 0; i < pondStuffCount; i++) {
# 243 "pondTime.c"
            shadowOAM[i+20].attr0 = (0<<13) | (0<<14) | ((pondStuff[i].y) & 0xFF);
            shadowOAM[i+20].attr1 = (1<<14) | ((pondStuff[i].x) & 0x1FF);
            shadowOAM[i + 20].attr2 = (((0) & 0xF) << 12) | (((pondStuff[i].direction*2) * 32 + (1)) & 0x3FF);


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
            shadowOAM[i+20].attr0 = (0<<13) | (0<<14) | ((pondStuff[i].y) & 0xFF);
            shadowOAM[i+20].attr1 = (1<<14) | ((pondStuff[i].x) & 0x1FF);
            shadowOAM[i + 20].attr2 = (((0) & 0xF) << 12) | (((pondStuff[i].direction*2) * 32 + (pondStuff[i].frame*2)) & 0x3FF);

            }


    }
    }
