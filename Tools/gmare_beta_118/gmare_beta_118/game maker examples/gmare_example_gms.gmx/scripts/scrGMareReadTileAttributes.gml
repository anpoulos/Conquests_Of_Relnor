//-----------------------------------------------------------------------------
// Applies optional tile attributes to a tile
//-----------------------------------------------------------------------------

stream = argument0;        // REAL: Stream to read data from
tileId = argument1;        // REAL: Tile object to apply attributes to
tileWidth = argument2;     // REAL: The width of a tile
tileHeight = argument3;    // REAL: The height of a tile
flipData = argument4;      // REAL: Whether to apply flipping data values
blendData = argument5;     // REAL: Whether to apply color blend data

// If using scale data
if (flipData == true)
{
    // Scaling values
    scaleX = 1;
    scaleY = 1;
    
    // Position of the tile
    tileX = tile_get_x(tileId);
    tileY = tile_get_y(tileId);
    
    // Get flipping mode
    mode = file_bin_read_byte(stream);
                        
    // 0 = No flipping
    // 1 = Flip X
    // 2 = Flip Y
    // 3 = Flip both
    // Set scale for flipping
    switch (mode)
    {
        case 0: break;
        case 1: scaleX = -1; tileX += tileWidth; break;
        case 2: scaleY = -1; tileY += tileHeight; break;
        case 3: scaleX = -1; tileX += tileWidth; scaleY = -1; tileY += tileHeight; break;
    }
    
    // Set flip by scaling
    tile_set_scale(tileId, scaleX, scaleY);
    
    // Set tile position
    tile_set_position(tileId, tileX, tileY);
}

// If using color blend
if (blendData == true)
{
    // Set color blend
    color = scrGMareReadBytes(stream, 4, true);
    
    // Set blend color
    tile_set_blend(tileId, color);
}
