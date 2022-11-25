; MC = Microcontroller 


; 1: Fake Surveillance Camera

; active MC 
mov 0 p0
slp 6
mov 100 p0
slp 6

; network MC 
mov 0 p0
slp 4
mov 100 p0
slp 2
mov 0 p0
slp 1
mov 100 p0
slp 1





; 2: Control Signal Amplifier

; control-in/control-out MC
mov p0 acc
mul 2
mov acc p1
slp 1





; 3: Diagnostic Pulse Generator

; button/pulse MC
  teq p0 100
+ mov 100 p1
+ slp 1 
+ mov 0 p1
  slp 1





; 4: Animated Esports Sign

; click-0/click-1 MC
mov 100 p0
mov 0 p1
slp 1
mov 0 p0
mov 100 p1
slp 1

; drink-0/drink-2 MC
mov 100 p0
slp 6
mov 0 p0
slp 1
mov 100 p1
slp 2
mov 0 p1
slp 1

; drink-1 MC
slp 6
mov 100 p0
slp 1
mov 0 p0
slp 2
mov 100 p0
slp 1
mov 0 p0





; 5: Drinking Game Scorekeeper

; foul/point/LCD screen MC
  tgt p1 0
+ add 1
  tgt p0 0
+ sub 2
+ tlt acc 0
+ mov 0 acc
  mov acc x1
  slp 1




; 6: Harmonic Maximization Engine

 ; maximize (input) MC
 mov p0 x1
  slp 1

; audio-in/audio-out MC
  mov p0 acc
  teq x0 100
+ sub 50
+ mul 4
+ add 50
  mov acc p1
  slp 1




; 7: Passive Infrared Sensor

; time/sensor/alarm/dials MC  
  teq p1 x0
+ mov 100 acc
  teq p1 x1
+ mov 0 acc
  tgt acc 0
+ tgt p0 19
+ mov acc x2
+ mov 100 x2
- mov 0 x2
  slp 1




; 8: Virtual Reality Buzzer

; buzzer/radio receiver MC
  tcp x0 0
- jmp nobuzz
  mov 0 acc
+ mov 1 acc
nobuzz: teq acc 1
+ mov 100 p1
+ slp 1
  mov 0 p1
  slp 1
