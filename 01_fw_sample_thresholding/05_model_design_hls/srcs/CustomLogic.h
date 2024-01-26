#ifndef CUSTOMLOGIC_H_
#define CUSTOMLOGIC_H_
#include <stdio.h>
#include "ap_int.h"
#include "ap_fixed.h"

#define IMAGE_HEIGHT 320
#define IMAGE_WIDTH 256
#define STREAM_DATA_WIDTH 128

typedef struct Metadata_struct {
  unsigned char   StreamId;
  unsigned short  SourceTag;
  ap_int<24>      Xsize;
  ap_int<24>      Xoffs;
  ap_int<24>      Ysize;
  ap_int<24>      Yoffs;
  ap_int<24>      DsizeL;
  unsigned short  PixelF;
  unsigned short  TapG;
  unsigned char   Flags;
  unsigned int    Timestamp;
  unsigned char   PixProcessingFlgs;
  unsigned int    ModPixelF;
  unsigned int    Status;
} Metadata_t;


typedef ap_uint<16> pixMono16;
typedef ap_uint<12> pixMono12;
#define MONO16PIX_NBR 8
#define MONO16PIX(j) Data((16*(j))+15,(16*(j)))
#define MONO16PIX_MSB(j) Data((16*(j))+7,(16*(j)))
#define MONO16PIX_LSB(j) Data((16*(j))+15,(16*(j))+8)
#define MONO16INDEXPIX(j) ((16*(j))+15,(16*(j)))

typedef ap_uint<MONO16PIX_NBR*16> DataMono16;
typedef ap_uint<4> User;

#define SOF User(0,0)==1
#define nSOF User(0,0)==0
#define SOL User(1,1)==1
#define nSOL User(1,1)==0
#define EndOL User(2,2)==1
#define nEndOL User(2,2)==0
#define EndOF User(3,3)==1
#define nEndOF User(3,3)==0

typedef struct video_struct{
  DataMono16 Data;
  ap_uint<4> User;
} video_if_t;

typedef struct pix_fmt_mono16{
  unsigned char Pixel[MONO16PIX_NBR];
}Mono16;

#endif 
