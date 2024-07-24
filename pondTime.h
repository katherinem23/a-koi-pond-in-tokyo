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

#define OFFSET(x, y, width) ((y) * (width) + (x))