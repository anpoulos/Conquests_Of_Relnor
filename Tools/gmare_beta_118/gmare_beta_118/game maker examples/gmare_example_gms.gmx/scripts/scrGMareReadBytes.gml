//----------------------------------------------------------------------------------------
// Reads bytes from a desired file stream, and converts it into the desired typed number
//----------------------------------------------------------------------------------------

stream = argument0;     // REAL: The file stream to read from
byteNum = argument1;    // REAL: The number of bytes to read
signed = argument2;     // BOOL: Whether the number is signed
size = byteNum * 8;     // REAL: The overall bit count of the number
sum = 0;                // REAL: The calculated sum of the bits

// Read bytes
for (i = 0; i < byteNum; i += 1)
    bytes[i] = file_bin_read_byte(stream);

// If the number is signed
if (signed)
{    
    // Check if the number is positive
    if (((bytes[byteNum - 1] >> 7) & 1) == 0)
        signNum = 1;
    else
        signNum = -1;
        
    // Drop the sign bit
    size -= 1;
}
else  // Not checking for sign bit, always positive
    signNum = 1;

// The overall index of the bit array
index = size;
    
// Iterate through bytes, from left to right
for (i = 0; i < byteNum; i += 1)
{
    // Iterate through bits, from left to right
    for (j = 0; j < 8; j += 1)
    {
        // Get the currently indexed bit
        bit = ((bytes[i] >> j) & 1);
        
        // If the number is negative, compliment the value of the bit
        if (signNum == -1)
            if (bit == 0) then bit = 1; else bit = 0;
        
        // If the bit is on, calculate sum, based on index position
        if (bit == 1)
            sum += power(2, size - index);
        
        // Deincrement the bit index
        index -= 1;
    }
}

// Make sum positive or negative
sum *= signNum;

// If the number is negative, add one
if (signNum == -1)
    sum -= 1;

// Return the value of the bits
return sum;
