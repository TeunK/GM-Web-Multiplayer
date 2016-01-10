array_values = argument0

var min_val = array_values[0];
 
// Loop through each array element
var i;
for (i = 0; i < array_length_1d(array_values); i++)
{
    // Check if this is larger than the stored one
    if (array_values[i] < min_val)
    {
        // Save this as the largest
        min_val = array_values[i];
    }
}

return min_val
