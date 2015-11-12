//Matrix(minSpeed, maxSpeed, tailLength):

var p,m,h,temp;
h=room_height div (string_height("A#A")-string_height("A"));

if (!global.__matrixInit)
{
    global.__matrixInit=1;
    
    for (p=0; p<room_width div string_width("A"); p+=1) {
      for (m=0; m<h; m+=1) {
        global.__matrix[p,m]="";
      }
      global.__on[p]=irandom_range(-40, 0);
    }
}

for (p=0; p<room_width div string_width("A"); p+=1) {
  temp=floor(global.__on[p]);
  global.__on[p]+=random_range(argument0, argument1);
  if (global.__on[p]<0) { continue; }
  else if (floor(global.__on[p])>=h) { global.__on[p]=0; }
  if (floor(global.__on[p])!=temp) { global.__matrix[p,floor(global.__on[p])]=chr(irandom_range(33,94)); }
  for (m=0; m<global.__on[p]; m+=1) {
    draw_set_color(merge_color(c_green, c_black, median(0,1,(global.__on[p]-m)/argument2)));
    draw_text(string_width("A")*p, m*(string_height("A#A")-string_height("A")), global.__matrix[p, m]);
  }
  draw_set_color(c_white);
  draw_text(string_width("A")*p, floor(global.__on[p])*(string_height("A#A")-string_height("A")), global.__matrix[p, floor(global.__on[p])]);
}
