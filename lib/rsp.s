#include "macros.inc"
.set UCODE_SIZE, 0x800

.section .text

.balign 16
glabel rspF3DBootStart
    .incbin "rsp/rspboot.bin"
.balign 16
glabel rspF3DBootEnd

.balign 16
#ifndef F3DEX_GBI_SHARED
glabel rspF3DStart /* Use regular Fast3D bins (default) */
    .incbin "rsp/fast3d.bin"
glabel rspF3DEnd

#else /* Use one of the Fast3DEX series grucodes. */
glabel rspF3DStart
    #ifdef F3DZEX_GBI_2
        .incbin "lib/PR/f3dex2/F3DZEX_NoN.bin"
    #elif defined(F3DEX_GBI)
        .incbin "lib/PR/f3dex/F3DEX.bin"
    #elif defined(F3DEX_GBI_2)
        .incbin "lib/PR/f3dex2/F3DEX2.bin"
    #endif
glabel rspF3DEnd
#endif

/* Audio Bins */

.balign 16
glabel rspAspMainStart
    .incbin "rsp/audio.bin"
glabel rspAspMainEnd

/*
 * LESS COMMON MICROCODES
 * These are setup to be loaded by G_LOAD_UCODE
 */

/* Fast3DEX NoN Text */
#ifdef F3DEX_NON_GBI
glabel rspF3DEXNoNStart
    .balign 16
    .incbin "lib/PR/f3dex/F3DEX_NoN.bin"
glabel rspF3DEXNoNEnd
#endif

/* Fast3DLX Text */
#ifdef F3DLX_GBI
glabel rspF3DLXStart
    .incbin "lib/PR/f3dex/F3DLX.bin"
glabel rspF3DLXEnd
#endif

/* Fast3DLX NoN Text */
#ifdef F3DLX_NON_GBI
glabel rspF3DLXNoNStart
    .balign 16
    .incbin "lib/PR/f3dex/F3DLX_NoN.bin"
glabel rspF3DLXNoNEnd
#endif

/* Fast3DLX Rej Text */
#ifdef F3DLX_REJ_GBI
glabel rspF3DLXRejStart
    .balign 16
    .incbin "lib/PR/f3dex/F3DLX_Rej.bin"
glabel rspF3DLXRejEnd
#endif

/* Line3DEX Text */
#ifdef L3DEX_GBI
glabel rspL3DEXStart
    .balign 16
    .incbin "lib/PR/f3dex/L3DEX.bin"
glabel rspL3DEXEnd
#endif

/* S2DEX Text */
#ifdef S2DEX_GBI
glabel rspS2DEXStart
    .balign 16
    .incbin "lib/PR/s2dex/S2DEX.bin"
glabel rspS2DEXEnd
#endif

/* Fast3DEX2 series */

/* Fast3DEX2 NoN Text */
#ifdef F3DEX2_NON_GBI
.balign 16
glabel rspF3DEX2NoNStart
    .incbin "lib/PR/f3dex2/F3DEX2_NoN.bin"
glabel rspF3DEX2NoNEnd
#endif

/* Fast3DEX2 Rej Text */
#ifdef F3DEX2_REJ_GBI
.balign 16
glabel rspF3DEX2RejStart
    .incbin "lib/PR/f3dex2/F3DEX2_Rej.bin"
glabel rspF3DEX2RejEnd
#endif

/* Line3DEX2 Text */
#ifdef L3DEX2_GBI
.balign 16
glabel rspL3DEX2Start
    .incbin "lib/PR/f3dex2/L3DEX2.bin"
glabel rspL3DEX2End
#endif

/* S2DEX2 Text */
#ifdef S2DEX_GBI_2
.balign 16
glabel rspS2DEXStart
    .incbin "lib/PR/s2dex/S2DEX2.bin"
glabel rspS2DEXEnd
#endif

/* DATA SECTION START */

.section .rodata

.balign 16
#ifndef F3DEX_GBI_SHARED /* Use regular Fast3D data (default) */
glabel rspF3DDataStart
    .incbin "rsp/fast3d_data.bin"
glabel rspF3DDataEnd

#else /* Using one of the Fast3DEX series grucodes */
glabel rspF3DDataStart
    #ifdef F3DZEX_GBI_2
        .incbin "lib/PR/f3dex2/F3DZEX_NoN_data.bin"
    #elif defined(F3DEX_GBI)
        .incbin "lib/PR/f3dex/F3DEX_data.bin"
    #elif defined(F3DEX_GBI_2)
        .incbin "lib/PR/f3dex2/F3DEX2_data.bin"
    #endif
glabel rspF3DDataEnd
#endif

/* Audio Data */

.balign 16
glabel rspAspMainDataStart
    .incbin "rsp/audio_data.bin"
glabel rspAspMainDataEnd

/* LESS COMMON MICROCODES */

/* Fast3DEX Series */

/* Fast3DEX NoN Data */
#ifdef F3DEX_NON_GBI
.balign 16
glabel rspF3DEXNoNDataStart
    .incbin "lib/PR/f3dex/F3DEX_NoN_data.bin"
glabel rspF3DEXNoNDataEnd
#endif

/* Fast3DLX Data */
#ifdef F3DLX_GBI
.balign 16
glabel rspF3DLXDataStart
    .incbin "lib/PR/f3dex/F3DLX_data.bin"
glabel rspF3DLXDataEnd
#endif

/* Fast3DLX NoN Data */
#ifdef F3DLX_NON_GBI
.balign 16
glabel rspF3DLXNoNDataStart
    .incbin "lib/PR/f3dex/F3DLX_NoN_data.bin"
glabel rspF3DLXNoNDataEnd
#endif

/* Fast3DLX Rej Data */
#ifdef F3DLX_REJ_GBI
.balign 16
glabel rspF3DLXRejDataStart
    .incbin "lib/PR/f3dex/F3DLX_Rej_data.bin"
glabel rspF3DLXRejDataEnd
#endif

/* Line3DEX Data */
#ifdef L3DEX_GBI
.balign 16
glabel rspL3DEXDataStart
    .incbin "lib/PR/f3dex/L3DEX_data.bin"
glabel rspL3DEXDataEnd
#endif

/* S2DEX Data */
#ifdef S2DEX_GBI
.balign 16
glabel rspS2DEXDataStart
    .incbin "lib/PR/s2dex/S2DEX_data.bin"
glabel rspS2DEXDataEnd
#endif

/* Fast3DEX2 Series */

/* Fast3DEX2 NoN Data */
#ifdef F3DEX2_NON_GBI
.balign 16
glabel rspF3DEX2NoNStart
    .incbin "lib/PR/f3dex2/F3DEX2_NoN_data.bin"
glabel rspF3DEX2NoNEnd
#endif

/* Fast3DEX2 Rej Data */
#ifdef F3DEX2_REJ_GBI
.balign 16
glabel rspF3DEX2RejStart
    .incbin "lib/PR/f3dex2/F3DEX2_Rej_data.bin"
glabel rspF3DEX2RejEnd
#endif

/* Line3DEX2 Data */
#ifdef L3DEX2_GBI
.balign 16
glabel rspL3DEX2Start
    .incbin "lib/PR/f3dex2/L3DEX2_data.bin"
glabel rspL3DEX2End
#endif

/* S2DEX2 Data */
#ifdef S2DEX_GBI_2
.balign 16
glabel rspS2DEXStart
    .incbin "lib/PR/s2dex/S2DEX2_data.bin"
glabel rspS2DEXEnd
#endif
