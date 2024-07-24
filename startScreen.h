
//{{BLOCK(startScreen)

//======================================================================
//
//	startScreen, 256x256@4, 
//	+ palette 240 entries, not compressed
//	+ 448 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 480 + 14336 + 2048 = 16864
//
//	Time-stamp: 2023-04-22, 23:11:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startScreenTilesLen 14336
extern const unsigned short startScreenTiles[7168];

#define startScreenMapLen 2048
extern const unsigned short startScreenMap[1024];

#define startScreenPalLen 480
extern const unsigned short startScreenPal[240];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startScreen)
