
//{{BLOCK(splashes)

//======================================================================
//
//	splashes, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 25 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 800 + 2048 = 3360
//
//	Time-stamp: 2023-04-04, 19:18:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPLASHES_H
#define GRIT_SPLASHES_H

#define splashesTilesLen 800
extern const unsigned short splashesTiles[400];

#define splashesMapLen 2048
extern const unsigned short splashesMap[1024];

#define splashesPalLen 512
extern const unsigned short splashesPal[256];

#endif // GRIT_SPLASHES_H

//}}BLOCK(splashes)
