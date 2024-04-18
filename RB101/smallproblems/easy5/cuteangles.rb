
DEGREE = "\xC2\xB0"

def dms(float)
  #create
  # display_dms = "#{degrees}, #{minutes}, #{seconds}"

  #transform
  degrees = float.to_i

  #transform
  minutes = ((float - degrees) * 60)
  for_seconds_int = minutes

  #transform
  seconds = (minutes - for_seconds_int) * 60

  #output
  display_dms = "#{degrees}#{DEGREE}#{minutes}'#{seconds}"
  puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# All test cases should return true
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")



=begin

Understanding the Problem:
Input: floating point number representing an angle
Output: string (representing the angle in degrees, minutes, and seconds)
  - use a degree sysmbol to represent degrees
  - single quote to represent minutes
  - double quotes to represent seconds.
  - a degree has 60 minutes
  - a minute has 60 seconds


Examples/test Cases:
# All test cases should return true
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Data Structures: 
Maybe a hash, im not sure
More likely a string

Algo:
Requirement
Approach
Procedure

- CREATE a local variable that will house our string object
  - display_dms = "#{degrees}, #{minutes}, #{seconds}"
- TRANSFORM the floating point number into degrees
  - Remove the float and keep the integer
    - degrees = float.to_i
- TRANSFORM the floating point number into minutes
  - Remove the int and keep the float to be able to convert to minutes
    - minutes = (float - degree) * 60 .to_i
    - for_seconds_int = minutes.to_i #This is to have an int to work with in the seconds part
    - might have to add a zero before it to work
- TRANSFORM the floating point number into seconds
  - Remove the int and keep the float to be able to convert to seconds
  - multiply by 60 to get the seconds
- OUTPUT the degrees, minutes, and seconds in a string
  - add the degrees, mninutes, and seconds with its respective symbols into the string

  Code:
  See above!

=end