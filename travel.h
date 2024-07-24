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

#define MAPWIDTH 512
#define MAPHEIGHT 350

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