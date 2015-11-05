//transforms array of strings into array containing character counts of those strings

var strings_array = argument0
var counts_array;
for (var i=0; i<array_length_1d(strings_array); i+=1)
{
    counts_array[i] = string_width(strings_array[i])
}

return counts_array