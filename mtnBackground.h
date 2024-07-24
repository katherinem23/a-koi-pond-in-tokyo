
//{{BLOCK(mtnBackground)

//======================================================================
//
//	mtnBackground, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 23 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 736 + 8192 = 9440
//
//	Time-stamp: 2023-05-03, 14:19:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MTNBACKGROUND_H
#define GRIT_MTNBACKGROUND_H

#define mtnBackgroundTilesLen 736
extern const unsigned short mtnBackgroundTiles[368];

#define mtnBackgroundMapLen 8192
extern const unsigned short mtnBackgroundMap[4096];

#define mtnBackgroundPalLen 512
extern const unsigned short mtnBackgroundPal[256];

#endif // GRIT_MTNBACKGROUND_H

//}}BLOCK(mtnBackground)
