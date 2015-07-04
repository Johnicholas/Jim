package require sdl

set xres 800
set yres 800
set s [sdl.screen $xres $yres]

set i 0
$s box 0 0 800 800 0 100 0
while 1 {
    if {$i % 1000 == 0} {
        set x1 [rand $xres]
        set y1 [rand $yres]
        set x2 [rand $xres]
        set y2 [rand $yres]
        set rad [rand 40]
        #set r [rand 256]
        set r 0
        #set g [rand 256]
        set g 0
        #set b [rand 256]
        set b 200
        #set b 0
        # $s circle $x1 $x2 $rad $r $g $b
        # $s box $x1 $y1 $x2 $y2 $r $g $b
        # $s rectangle $x1 $y1 $x2 $y2 $r $g $b
        $s fcircle $x1 $y1 $rad $r $g $b
        # $s line $x1 $y1 $x2 $y2 $r $g $b
        # $s pixel $x1 $y1 $r $g $b
    }
  incr i
  if {$i > 2000} {$s flip}
  if {$i == 30000} exit
}
