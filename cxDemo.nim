import cx,strutils,strfmt,random,times

## small demos repository for var. procs in cx.nim
## this file is imported by cxTest.nim to actually run the demos
 

proc futureIsNimDemo*(posx:int = 0) = 
      ## futureIsNim
      ## 
      ## demo example of a box drawn with doty procs and 2 text lines
      ## 
      ## max xpos = 20
      ## 
      ## .. code-block:: nim
      ##    import cx
      ##    cleanScreen()
      ##    for x in 0.. 10:
      ##        centerMark()
      ##        echo()
      ##        sleepy(0.1)
      ##    flyNimDemo()
      ##    futureIsNimDemo(20)
           
      var xpos = posx 
      if xpos > 35:
         xpos = 35
         
      drawRect(7,29 ,frhLine = widedot,frvLine = wideDot , frCol = randCol(),xpos = xpos)
     
      curup(5)
      curSetx(xpos)
      doty(1,red)
      print(" ",clrainbow,xpos = xpos + 20)
      doty(1,lime)
      doty(1,tomato)
      print(" Nim",salmon)
      doty(1,tomato)
      doty(1,lime)
      # 2nd text line
      curdn(1)
      curSetx(xpos)
      #doty(1,red)
      curSetx(xpos + 17)
      print("The future is now !",steelblue)
      curdn(5)



proc flyNimDemo*(astring:string = "Fly Nim",col:string = red,tx:float = 0.08) =

      ## flyNim
      ## 
      ## small animation demo
      ## 
      ## .. code-block:: nim
      ##    flyNimDemo(col = brightred)  
      ##    flyNimDemo(" Have a nice day !", col = hotpink,tx = 0.1)   
      ## 

      var twc = tw div 2
      var asc = astring.len div 2
      var sn = tw - astring.len
      for x in 0.. twc-asc:
        hline(x,yellowgreen)
        if x < twc - asc :
              printStyled("✈","",brightyellow,{styleBlink})
              hlineln(tw - 1 - x,clrainbow)
        else:
              printStyled(astring,"",red,{styleBright})
              hlineln(sn - x,salmon)
        sleepy(tx)
        curup(1) 
        
      echo()
      

proc centerNimDemo*() = 
   # test for centerpos
   var b = " C,C++,Python,Rust,Scala,Fortran,Cobol,Go"  
   cleanScreen()  
   
   for x in 0.. 4:
           centerPos(b)
           printLnStyled(b,"",gray,{styleDim})
           
   sleepy(0.1)
   echo()
   printLn("Nim",lime,centered=true)
   echo()
   for x in 0.. 4:
      centerpos(b)   
      printLnStyled(b,"",gray,{styleDim})



            
            
proc movNimDemo*() =
    ## movNim
    ## 
    ## Demo moving Nim
    ## 
    ## .. code-block:: nim
    ##    import cx 
    ##    decho(5)
    ##    movNimDemo()
    ##    printNimSxR(salmon)
    ##    printNimSxR(lime,55)
    ##    doFinish()
    ##
    cleanScreen()
    for xpos in 1.. tw - nimsx[0].len + 20:
        if float(xpos mod 8) == 0.0:
            printNimSxR(nimsx,xpos = xpos)
            sleepy(0.025)
        else:
          printNimSxR(nimsx,xpos = xpos)
        sleepy(0.025)
        cleanScreen()

    for xpos in countdown(tw - nimsx[0].len + 20 ,1,1):
        if float(xpos mod 8) == 0.0:
            printNimSxR(nimsx,red,xpos=xpos)
            sleepy(0.025)
        else:
          printNimSxR(nimsx,gray,xpos)
        sleepy(0.025)
        cleanScreen()



proc randomCardsDemo*() =
   ## randomCards
   ## 
   ## Demo for colorful cards deck ...
   decho(2)
   for z in 0.. <th -3:
      for zz in 0.. <tw div 2 - 1:
          print cards[rxCards.randomChoice()],randCol()
      writeLine(stdout,"") 
    

proc randomCardsClockDemo*() = 
    ## randomCardsClockDemo
    ## 
    ## 
    ## 

    for x in countdown(10,0):
        randomCardsDemo()
        curup(th div 2)
        if x == 0:
                printSlimNumber($getClockStr(),fgr=lime,xpos=25)
        else:
                printSlimNumber($getClockStr(),fgr=lime,xpos=15)       
        if x > 0:
            curup(7)
            printBigNumber($x,truetomato,xpos = 75)
        curSet()
        sleepy(0.3)

    curdn(th)


proc happyEmojis*() =
  ## happyEmojis
  ## 
  ## lists implemented emojis if available in your system
  ## 
  
  decho(2)
  cechoLn(lime & emojis[7] & yellowgreen & " Happy Emojis " & lime & emojis[7])
  echo()
  for x in 0.. <emojis.len:
      printLnBiCol("{:<4} : {}".fmt($x,emojis[x]),":",white,randcol())
  decho(2)



proc ndLineDemo*() =
  ## ndLineDemo
  ## 
  ## Numbered dots line demo
  ## 
  ## test with bash terminal only , styleBlink may not work with some terminals
  ## 
  ## 
  curup(1)
  var c = (tw.float / 2.76666).int 
  for x in 0.. <c:
      if x == c div 2 :
        printStyled($x,$x,lime,{styleBlink})
      else:  
        printStyled($x,$x,goldenrod,{styleBright})  
      curdn(1)
      curbk(1)
      if x == c div 2 :
        printStyled(".",".",lime,{styleBright,styleBlink})
      else:
        print(".",truetomato)
      curup(1)
      curfw(1)
  decho(2)



#### sierpcarpet small snippet I lifted from somewhere and colorized

proc `^`*(base: int, exp: int): int =
  var (base, exp) = (base, exp)
  result = 1
 
  while exp != 0:
    if (exp and 1) != 0:
      result *= base
    exp = exp shr 1
    base *= base
 
proc inCarpet(x:int, y:int): bool =
  var x = x
  var y = y
  while true:
    if x == 0 or y == 0:
      return true
    if x mod 3 == 1 and y mod 3 == 1:
      return false
 
    x = x div 3
    y = y div 3
 
proc sierpCarpetDemo*(n:int) =
  ## sierpCarpetDemo
  ## 
  ## draws the carpet in color
  ## 
  for i in 0 .. <(3^n):
    for j in 0 .. <(3^n):
      if inCarpet(i, j):
        print("* ",randcol())
      else:
        printStyled("  ","",truetomato,{stylereverse})
        #print("  ","",lime)
        
    echo ""




proc drawRectDemo*() =
  ## drawRectDemo
  ## 
  ## examples of using drawRect
  ## 
  drawRect(15,24,frhLine = "+",frvLine = wideDot , frCol = randCol(),xpos = 8)
  curup(12)
  drawRect(9,20,frhLine = "=",frvLine = wideDot , frCol = randCol(),xpos = 10,blink = true)
  curup(12)
  drawRect(9,20,frhLine = "=",frvLine = wideDot , frCol = randCol(),xpos = 35,blink = true)
  curup(10)
  drawRect(6,14,frhLine = "~",frvLine = "$" , frCol = randCol(),xpos = 70,blink = true)



proc wideDotFieldDemo*()=
  ## wideDotFieldDemo
  ## 
  ## draws random col widedots
  ## 
  for x in 0.. 1000:
      loopy(1.. tw div 2, doty(1,randcol()))
      echo()       




proc cxYourNimDemo*() =
    # cxYourNimDemo
    # 
    # best viewed on a full width terminal
    # 
    for y in 0.. 30:
      cleanScreen()  
      curdn(10)
      for x in 0.. 4:
         curfw(10)
         println(cbx[x] & xbx[x] & hybx[x] & " " & cbx[x] & obx[x] & lbx[x] & obx[x] & rbx[x] & "  " & ybx[x] & obx[x] & ubx[x] & rbx[x] & "  " & nbx[x] & ibx[x] & mbx[x],randcol())
      sleepy(0.1)
    decho(10)    
    




proc bigPanelDemo*() =
        ## bigPanelDemo
        ## 
        ## best viewed in full width terminal
        ## 
                
        var xpos = 16
        var c = 0
       
        for y in {'A'..'Z'}:
            printBigLetters($y,fgr = steelblue,bgr = black,xpos = xpos,fun = true)
            inc c
            if c == 13 :
               decho(8)
               xpos = 16
            elif c == 26 :   
               decho(8)
               xpos = 1
            else:
               xpos = xpos + 8
            
            if c > 26:
              break
        
        
        decho(4)
        xpos = 6     
        printBigLetters("-",xpos = xpos + 11,fun = true)
        printBigLetters("+",xpos = xpos + 20,fun = true)
        printBigLetters("0123456789",xpos = xpos + 29,fun = true)
        decho(10)
        printBigLetters(repeat("_",18),fgr = randcol(),xpos = 10,fun = true)
        decho(8)
        printBigLetters("CX - COLOR",xpos = 40 ,fun=true)
        decho(5)
        printBigLetters(repeat("_",18),fgr = randcol(),xpos = 10,fun = true)
        decho(8)

      
   

proc colorCJKDemo*() =   
    ## colorCJKDemo
    ##
    ## carpet with CJK characters
    ##
    
    for y in 0.. 20:
       for x in 0.. 50:
           print(newwordCJK(1,1),randcol())
       echo()   
    sleepy(3)   
        
    
    


