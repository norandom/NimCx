import cx,strutils

# The absolute must have gnu ! Currently busy running about .


proc gnuMe(j:int,xpos:int = 10) =
      clearup()
     
      rainbow2("\n WWWWWW||WWWWWW",xpos = xpos)
      echo()
      rainbow2("   W W W||W W W ",xpos = xpos)
      echo()
      rainbow2("        || ",xpos = xpos)
      echo()
      rainbow2("      ( OO )__________  ",xpos=xpos)
      echo()
      rainbow2("       /  |            \\ ",xpos = xpos)
      echo()
      rainbow2("      /o o| Niminator   \\   *",xpos = xpos)
      echo()
      rainbow2("      \\___/|| _||__|| _ ||-'",xpos = xpos)
      echo()
      rainbow2("            ||  ||  ||  || ",xpos = xpos)
      echo()
      rainbow2("           _|| _|| _|| _|| ",xpos = xpos)
      echo()
      rainbow2("          (__|(__|(__|(__| ",xpos = xpos) 
       
      decho(5)
      print(" Professional Gnu Sightings :  ",lightsalmon)
      curup(2)
      printSlim($j,brightwhite,brightblue,xpos = 35)
      echo()
      sleepy(0.18)
     
for m in 1.. 3:
  for j in 1.. tw - 20: gnuMe(j.int * m + 1,xpos = tw - 20 - j )
doFinish()

