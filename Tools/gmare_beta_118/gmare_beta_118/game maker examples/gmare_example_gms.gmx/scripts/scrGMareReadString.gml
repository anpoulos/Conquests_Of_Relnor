//-----------------------------------------------------------------------------
// Reads a string from a stream
//-----------------------------------------------------------------------------

stream = argument0;    // REAL: Stream to read data from
bytes = argument1;     // REAL: The binary size of the character length

// The resulting string
result = "";

// Read the number of characters the string has
count = scrGMareReadBytes(stream, bytes, true);

// Read characters
repeat (count)
{
    // Add character to string
    result = string_insert(chr(file_bin_read_byte(stream)), result, string_length(result) + 1);
}

// Return the string
return result;
