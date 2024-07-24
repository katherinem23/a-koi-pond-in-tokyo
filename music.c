#include "gba.h"
#include "sound.h"
#include "japaneseGarden.h"
#include "music.h"



void setupSounds() {

    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = DMG_VOL_LEFT(5) | DMG_VOL_RIGHT(5) |
                   DMG_SND1_LEFT | DMG_SND1_RIGHT |
                   DMG_SND2_LEFT | DMG_SND2_RIGHT |
                   DMG_SND3_LEFT | DMG_SND3_RIGHT |
                   DMG_SND4_LEFT | DMG_SND4_RIGHT;

    japanGarden.sampleRate = japaneseGarden_sampleRate;
    japanGarden.length = japaneseGarden_length;
    japanGarden.data = (signed char*)japaneseGarden_data;

}


void playSong(const signed char* data, int dataLength, int looping) {
    
   
    DMANow(1, data, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    
    REG_TM0CNT = TIMER_OFF;
    int cyclesPerSample = (PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ);
    REG_TM0D = 65536 - cyclesPerSample;
    REG_TM0CNT = TIMER_ON;


    
    soundA.data = data;
    soundA.dataLength = dataLength;
    soundA.looping = looping;
    soundA.isPlaying = 1;
    soundA.durationInVBlanks = (VBLANK_FREQ * dataLength) / SOUND_FREQ;


}

