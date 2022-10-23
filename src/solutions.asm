; Level 1: Fake Surveillance Camera

; MC 1
mov 0 p0
slp 6
mov 100 p0
slp 6

; MC 2
mov 0 p0
slp 4
mov 100 p0
slp 2
mov 0 p0
slp 1
mov 100 p0
slp 1

; Level 2: Control Signal Amplifier

mov p0 acc
mul 2
mov acc p1
slp 1

; Level 3: Diagnostic Pulse Generator

  teq p0 100
+ mov 100 p1
+ slp 1 
+ mov 0 p1
  slp 1

; Level 4: Animated Esports Sign

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

; Level 5: Drinking Game Scorekeeper

  tgt p1 0
+ add 1
  tgt p0 0
+ sub 2
+ tlt acc 0
+ mov 0 acc
  mov acc x1
  slp 1