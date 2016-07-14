.section .rodata

    .align 2
test_char_palette_pal:
    dc.w    0x0000, 0x0268, 0x0CA4, 0x06A6, 0x06AC, 0x0ACE, 0x0EEE, 0x0000
    dc.w    0x770F, 0x1414, 0xC95D, 0x0000, 0x7290, 0x004F, 0x00C4, 0x004F

    .align 2
test_char_palette:
    dc.w    0, 16
    dc.l    test_char_palette_pal

    .align 2
test_char_animation0_frame0_sprite0_tileset_tiles:
    dc.w    0x3333, 0x3333, 0x3333, 0x3113, 0x3333, 0x3311, 0x3333, 0x3311
    dc.w    0x3333, 0x3311, 0x3333, 0x3331, 0x3333, 0x3331, 0x3333, 0x3311
    dc.w    0x3333, 0x3311, 0x3333, 0x3311, 0x3333, 0x1132, 0x3333, 0x3332
    dc.w    0x3333, 0x3332, 0x3333, 0x3322, 0x3333, 0x3333, 0x3333, 0x3333
    dc.w    0x3333, 0x3333, 0x3333, 0x3331, 0x3333, 0x3331, 0x3333, 0x3331
    dc.w    0x3333, 0x3331, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333
    dc.w    0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333
    dc.w    0x3333, 0x3334, 0x3333, 0x3311, 0x3333, 0x3331, 0x3333, 0x3331
    dc.w    0x3333, 0x3333, 0x3333, 0x3333, 0x1113, 0x3333, 0x1111, 0x1113
    dc.w    0x1111, 0x1111, 0x1111, 0x1122, 0x1112, 0x2244, 0x1124, 0x4555
    dc.w    0x1245, 0x5605, 0x2455, 0x5605, 0x2555, 0x5605, 0x4555, 0x4455
    dc.w    0x4555, 0x5555, 0x2455, 0x5553, 0x3344, 0x3333, 0x3224, 0x2233
    dc.w    0x1422, 0x4243, 0x4422, 0x2243, 0x4222, 0x2243, 0x4225, 0x5244
    dc.w    0x4445, 0x5224, 0x3145, 0x5223, 0x3322, 0x2223, 0x3314, 0x4443
    dc.w    0x3144, 0x4443, 0x3144, 0x3143, 0x1443, 0x3143, 0x1433, 0x4443
    dc.w    0x4431, 0x1133, 0x1333, 0x1133, 0x1333, 0x1113, 0x1133, 0x3333
    dc.w    0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333
    dc.w    0x1133, 0x3333, 0x2311, 0x3333, 0x4233, 0x3333, 0x5323, 0x3333
    dc.w    0x5333, 0x3333, 0x5322, 0x3333, 0x5322, 0x3333, 0x5322, 0x3333
    dc.w    0x3321, 0x3333, 0x3321, 0x3333, 0x3311, 0x3333, 0x3311, 0x3333
    dc.w    0x3311, 0x3333, 0x3311, 0x3333, 0x3551, 0x3333, 0x4551, 0x3333
    dc.w    0x4551, 0x3333, 0x3311, 0x3333, 0x3313, 0x3333, 0x3313, 0x3333
    dc.w    0x3313, 0x3333, 0x3311, 0x3333, 0x3331, 0x3333, 0x3331, 0x3333
    dc.w    0x3331, 0x3333, 0x3331, 0x3333, 0x3333, 0x3333, 0x3333, 0x3333

    .align 2
test_char_animation0_frame0_sprite0_tileset:
    dc.w    0
    dc.w    12
    dc.l    test_char_animation0_frame0_sprite0_tileset_tiles

    .align 2
test_char_animation0_frame0_sprite0:
    dc.w    0
    dc.w    2816
    dc.w    0
    dc.w    0
    dc.l    test_char_animation0_frame0_sprite0_tileset


    .align 2
test_char_animation0_frame0_sprites:
    dc.l    test_char_animation0_frame0_sprite0

    .align 2
test_char_animation0_frame0:
    dc.w    1
    dc.l    test_char_animation0_frame0_sprites
    dc.w    0
    dc.l    0
    dc.w    24
    dc.w    32
    dc.b    0
    dc.b    0


    .align 2
test_char_animation0_frames:
    dc.l    test_char_animation0_frame0

    .align 2
test_char_animation0_sequence:
    dc.w    0x0071

    .align 2
test_char_animation0:
    dc.w    1
    dc.l    test_char_animation0_frames
    dc.w    1
    dc.l    test_char_animation0_sequence
    dc.w    0


    .align 2
test_char_animations:
    dc.l    test_char_animation0

    .align 2
    .global test_char
test_char:
    dc.l    test_char_palette
    dc.w    1
    dc.l    test_char_animations

