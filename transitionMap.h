
//{{BLOCK(transitionMap)

//======================================================================
//
//	transitionMap, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 39 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 1248 + 8192 = 9952
//
//	Time-stamp: 2023-05-03, 14:09:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TRANSITIONMAP_H
#define GRIT_TRANSITIONMAP_H

#define transitionMapTilesLen 1248
extern const unsigned short transitionMapTiles[624];

#define transitionMapMapLen 8192
extern const unsigned short transitionMapMap[4096];

#define transitionMapPalLen 512
extern const unsigned short transitionMapPal[256];

#endif // GRIT_TRANSITIONMAP_H

//}}BLOCK(transitionMap)
