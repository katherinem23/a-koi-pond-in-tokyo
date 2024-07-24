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