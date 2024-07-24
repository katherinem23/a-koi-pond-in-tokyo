
//{{BLOCK(pondScene)

//======================================================================
//
//	pondScene, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 140 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4480 + 2048 = 7040
//
//	Time-stamp: 2023-05-03, 15:13:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PONDSCENE_H
#define GRIT_PONDSCENE_H

#define pondSceneTilesLen 4480
extern const unsigned short pondSceneTiles[2240];

#define pondSceneMapLen 2048
extern const unsigned short pondSceneMap[1024];

#define pondScenePalLen 512
extern const unsigned short pondScenePal[256];

#endif // GRIT_PONDSCENE_H

//}}BLOCK(pondScene)
