array_values = argument0

var max_val = 0;
 
// Loop through each array element
var i;
for (i = 0; i < array_length_1d(array_values); i++)
{
    // Check if this is larger than the stored one
    if (array_values[i] > max_val)
    {
        // Save this as the largest
        max_val = array_values[i];
    }
}

return max_val
