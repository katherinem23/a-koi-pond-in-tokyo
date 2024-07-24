
//{{BLOCK(pauseScreen)

//======================================================================
//
//	pauseScreen, 256x256@4, 
//	+ palette 240 entries, not compressed
//	+ 315 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 480 + 10080 + 2048 = 12608
//
//	Time-stamp: 2023-04-22, 22:57:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREEN_H
#define GRIT_PAUSESCREEN_H

#define pauseScreenTilesLen 10080
extern const unsigned short pauseScreenTiles[5040];

#define pauseScreenMapLen 2048
extern const unsigned short pauseScreenMap[1024];

#define pauseScreenPalLen 480
extern const unsigned short pauseScreenPal[240];

#endif // GRIT_PAUSESCREEN_H

//}}BLOCK(pauseScreen)
