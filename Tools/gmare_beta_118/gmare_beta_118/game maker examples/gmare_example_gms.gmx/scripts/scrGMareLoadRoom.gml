//-----------------------------------------------------------------------------
// A standard room load from a GMare .bin file
//-----------------------------------------------------------------------------

file = argument0;        // STRING: The GMare .bin file path
roomName = argument1;    // STRING: The name of the room to load

// If the file does not exist, exit
if (!file_exists(file))
{
    // Show error
    show_message("ERROR: The GMare binary file: " + file + " does not exist.");
    exit;
}

// Open the .bin file to read
stream = file_bin_open(file, 0);

// The GMare binary file id
fileId = "";

// Read four character bytes
repeat (4)
{
    fileId += chr(file_bin_read_byte(stream));
}
    
// If not a valid GMare binary file, exit
if (fileId != "GBIN")
{
    // Show error, close file stream
    show_message("ERROR: The file is not a valid GMare .bin file.");
    file_bin_close(stream);
    exit;
}

// If the desired room to load was found
roomFound = false;

// The amount of rooms in the file
roomCount = scrGMareReadBytes(stream, 2, true);

// Stream position (Header + room count)
position = 6;

// Iterate through rooms in the GMare binary file
repeat (roomCount)
{
    // Read room name
    search = scrGMareReadString(stream, 1);

    // Add to position (Room name character count, room name length, room data size number, room data size offset
    dataOffset = scrGMareReadBytes(stream, 4, true);
    position = position + 1 + string_length(search) + 4 + dataOffset;

    // If the search string matches the desired room name
    if (search == roomName)
    {
        // Room was found, break loop
        roomFound = true;
        break;
    }
    
    // Skip room data
    file_bin_seek(stream, position);
}

// If the desired room was not found, exit
if (roomFound == false)
{
    // Show error, close file stream
    show_message("ERROR: The room: " + roomName + " was not found.");
    file_bin_close(stream);
    exit;
}

// Room data:
tileData = file_bin_read_byte(stream);      // If there's tile data
flipData = file_bin_read_byte(stream);      // If there's tile flipping data
blendData = file_bin_read_byte(stream);     // If there's tile color blend data
instanceData = file_bin_read_byte(stream);  // If there's instance data

// If there's tile data
if (tileData == true)
{
    layerCount = scrGMareReadBytes(stream, 4, true);                    // The number of layers in the room
    columns = scrGMareReadBytes(stream, 2, true);                       // The number of tile columns in the room
    rows = scrGMareReadBytes(stream, 2, true);                          // The number of tile rows in the room
    tileOffsetX = file_bin_read_byte(stream);                           // The horizontal tile offset of the background
    tileOffsetY = file_bin_read_byte(stream);                           // The vertical tile offset of the background
    tileSeparationX = file_bin_read_byte(stream);                       // The horizontal separation of the background
    tileSeparationY = file_bin_read_byte(stream);                       // The vertical separation of the background
    tileWidth = file_bin_read_byte(stream);                             // Width of a single tile in the background
    tileHeight = file_bin_read_byte(stream);                            // Height of a single tile in the background
    backgroundColumns = scrGMareReadBytes(stream, 4, true);             // The number of columns of the background
    backgroundId = scrGMareReadBytes(stream, 4, true);                  // The background id
    backgroundName = asset_get_index(scrGMareReadString(stream, 4));    // The background name

    // Iterate through layers
    repeat (layerCount)
    {
        // Get layer depth
        layerDepth = scrGMareReadBytes(stream, 4, true);
        method = file_bin_read_byte(stream);
        
        // If the layer uses the sector method, instead of the tile method
        if (method == 0)
        {
            // Iterate through rows
            for (row = 0; row < rows; row += 1)
            {
                // Iterate through columns
                for (column = 0; column < columns; column += 1)
                {
                    // Get source tile id from file
                    tileId = scrGMareReadBytes(stream, 4, true);

                    // If the tile id is not empty
                    if (tileId == -1)
                        continue;

                    // Calculate tile destination position.
                    destX = column * tileWidth + tileOffsetX;
                    destY = row * tileHeight + tileOffsetY;
                    
                    // Calculate tile source position
                    srcX = (tileId - (floor(tileId / backgroundColumns)) * backgroundColumns) * tileWidth;
                    srcY = floor(tileId / backgroundColumns) * tileHeight;

                    // Adjust with tile offsets and separations
                    srcX += (floor(srcX / tileWidth) * tileSeparationX) + tileOffsetX;
                    srcY += (floor(srcY / tileHeight) * tileSeparationY) + tileOffsetY;
                        
                    // Add tile to room
                    tile = tile_add(backgroundName, srcX, srcY, tileWidth, tileHeight, destX, destY, layerDepth);
                        
                    // Set additional tile attributes
                    scrGMareReadTileAttributes(stream, tile, tileWidth, tileHeight, flipData, blendData);
                }
            }
        }
        else  // Tile mode
        {
            // The number of tiles in tile mode
            tileCount = scrGMareReadBytes(stream, 4, true);

            // Iterate through tiles
            repeat (tileCount)
            {
                // Read destination position
                destX = scrGMareReadBytes(stream, 4, true);
                destY = scrGMareReadBytes(stream, 4, true);
                srcX = scrGMareReadBytes(stream, 4, true);
                srcY = scrGMareReadBytes(stream, 4, true);
                srcWidth = scrGMareReadBytes(stream, 4, true);
                srcHeight = scrGMareReadBytes(stream, 4, true);
                
                // Add tile to room
                tile = tile_add(backgroundName, srcX, srcY, srcWidth, srcHeight, destX, destY, layerDepth);

                // Set additional tile attributes
                scrGMareReadTileAttributes(stream, tile, tileWidth, tileHeight, flipData, blendData);
            }
        }
    }
}

// If using instance data
if (instanceData == true)
{
    instanceCount = scrGMareReadBytes(stream, 4, true);  // The number of instances in the room
    
    // Iterate through instances
    repeat (instanceCount)
    {
        objectName = asset_get_index(scrGMareReadString(stream, 4));    // Instance object name
        object = scrGMareReadBytes(stream, 4, true);                    // Instance object id
        instanceX = scrGMareReadBytes(stream, 4, true);                 // Horizontal coordinate
        instanceY = scrGMareReadBytes(stream, 4, true);                 // Vertical coordinate
        code = scrGMareReadString(stream, 4);                           // Instance creation code

        // If the object does not exist
        if (object_exists(objectName) == false)
        {
            // Show error, continue
            show_message("ERROR: The object with id: " + string(objectName) + " does not exist.");
            continue;
        }

        // Create a new instance of the object
        inst = instance_create(instanceX, instanceY, objectName);
    
        // If there is creation code, execute it
        if (code != "")
        {
            // A hack to make sure the code executes within the instance
            // Problem being is this executes after the creation event
            // Solution is needed to emulate native behavior
            code = string_insert("with (inst) {", code, 1);
            code = string_insert("}", code, string_length(code));
            //execute_string(code);
        }
    }
}

// Close file stream
file_bin_close(stream);
