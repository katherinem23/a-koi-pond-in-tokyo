
//{{BLOCK(mtn)

//======================================================================
//
//	mtn, 512x512@4, 
//	+ palette 240 entries, not compressed
//	+ 298 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 480 + 9536 + 8192 = 18208
//
//	Time-stamp: 2023-04-22, 16:47:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MTN_H
#define GRIT_MTN_H

#define mtnTilesLen 9536
extern const unsigned short mtnTiles[4768];

#define mtnMapLen 8192
extern const unsigned short mtnMap[4096];

#define mtnPalLen 480
extern const unsigned short mtnPal[240];

#endif // GRIT_MTN_H

//}}BLOCK(mtn)
