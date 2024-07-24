
//{{BLOCK(endScene)

//======================================================================
//
//	endScene, 256x256@4, 
//	+ palette 240 entries, not compressed
//	+ 307 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 480 + 9824 + 2048 = 12352
//
//	Time-stamp: 2023-04-22, 22:50:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ENDSCENE_H
#define GRIT_ENDSCENE_H

#define endSceneTilesLen 9824
extern const unsigned short endSceneTiles[4912];

#define endSceneMapLen 2048
extern const unsigned short endSceneMap[1024];

#define endScenePalLen 480
extern const unsigned short endScenePal[240];

#endif // GRIT_ENDSCENE_H

//}}BLOCK(endScene)
