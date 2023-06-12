a = 5.0
b = 10.0

## if statement
if(a < b)
  print("a is less than b")

if(a > b)
{
  print("a is greater than b")
} else
{
  print("a is not greater than than b")
}


theta = 181 

if(theta == 0) {
  print("Positive X axis")
} else if ( (theta > 0) & (theta < 90)) 
{
  print("First quadrant")
} else if (theta == 90)
{
  print("Positive Y axis")
} else if ( (theta > 90) & (theta < 180)) 
{
  print("Second quadrant")
} else if (theta == 180)
{
  print("Negative X axis")
} 

# for loop
for(i in 1:10)
{
  print(i)
}  


avec <- c(2.1, 3.2, 4.3, 5.4, 6.5, 7.6)

for( num in avec)
{
  num = num*10
  
  print(num)
}


avec <- c(2.1, 3.2, 4.3, 5.4, 6.5, 7.6)

for( i in 1:length(avec) )
{
  num = avec[i]*10
  
  print(num)
}  


## while loop
num = 100.0

while (num > 0.0)
{
  num = num - 10.0
  
  print(num)
  
}


nevent = 100

for(i in 1:nevent) 
{
  if(i*12.0 > 200)
    break;
  
  print(i)
  
}

print("Now the control is outside of the for loop")
