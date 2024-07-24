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
#include "game.h"
#include "music.h"





/**
 * ~~MILESTONE 3: COMMENTS ABOUT PROGRESS SO FAR ~~
 * 
 * 
 * 
 * 
 * 
 * ULTRA FAST INSTRUCTIONS: move fishing pole w R and L buttons. Press SELECT to catch fish. Once all fish caught, press L SHOULDER to go to home pond. 
 *                          move cursor using R and L to highlight item, press A to select it. Position it using R,L,UP,DOWN and press B to place. Press R SHOULDER to finish. 
 * 
 * 
 * 
 * 
 * M3 requirements:
 * Every state of game has a unique background. The traveling state through the meadow utilizes layered and scrolling backgrounds.
 * 
 * Sprites- there are more than 4 unique sprites. The koi sprite has 4 directions with 3 animation states in each. The plant sprites in the meadow also having looping animations.
 * 
 * Sounds- I have a lovely japanese garden sound playing throughout the game, and whenever you collect a fish or plant,
 * it makes a satisfying ding sound that plays simultaneously with the background song.
 * 
 * Changing background - slightly confused on this requirement, many of my backgrounds do involve using DMA but I plan
 * on adding an inventory bar using another BG layer and editing it using tile replacement. I will have that implemented by the game's completion.
 * 
 * 
 * Bugs: 
 * Still having trouble with the rock/falcon collision. Probably going to rewrite that code so it can be applicable to falcons and fish too.
 * Having similar issue with getting the koi to swim around once placed in pond - I believe both of these bugs have something to do with my 
 * 'active' attribute. For some reason it does not register when sprites are active vs inactive so it isn't running certain code
 * when it should be.
 * 
 * The foreground in the meadow works well, but something is up with the background mountain palette. I need to make sure
 * the palettes are properly merged.
 *
 * 
 * 
 * 
 * Moving forward:
 * Considering adding little instruction pop ups with each scene to help you navigate the game more easily.
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 *

*/


#define MAPWIDTH 0
#define MAPHEIGHT 0

SPRITE koi[15];
SPRITE fisher;
SPRITE falcons[4];
SPRITE rock;
extern int frameCount;
int catchTime;

enum {MENU, INSTRUCTIONS, GAME, PAUSE, END};
int GAMESTATE;
enum {DOWN, LEFT, RIGHT, UP};
int DIRECTION;

OBJ_ATTR shadowOAM[128];

unsigned short oldButtons;
unsigned short buttons;

int main() {
    initializeMenu();
    setupSounds();
    playSong(japanGarden.data, japanGarden.length, 1);
    frameCount = 0;
    
    srand(time());

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(GAMESTATE) {
            case(MENU):
            waitOnMenu();
            break;
            case(INSTRUCTIONS):
            waitOnInstructions();
            break;
            case(GAME):
            updateGame();
            break;
            case(PAUSE):
            waitOnPause();
            break;
            case(END):
            waitOnEnd();
            break;
            
        }

        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128*4);
        frameCount = (frameCount + 1) % 60;
        
    }
}

