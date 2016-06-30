# NimCx

![Image](http://qqtop.github.io/nimcolors11.png?raw=true)


Color and Utilities for the Linux Terminal
-------------------------------------------



| Code           | Demos            | Tests            |
|----------------|------------------|------------------|
| cx.nim         | cxDemo.nim       | cxTest.nim       |


Requires     : Latest Nim dev version


Installation : nimble install nimFinLib    (this installs nimFinLib and NimCx libraries)



Documentation for cx.nim : http://qqtop.github.io/cx.html


Example usage of print procs 


```nimrod
import cx,strutils

# linux only

superHeader("Testing print procs from cx.nim")

let s = "Test color string"
let n = 1234567
let f = 123.4567
let l = @[1234,4567,654]

# background colors for print and println are standard terminal colors
# to use other colors use printStyled or printLnStyled with stylereverse

printLn(s,white,brightblack)
printLn(n,white,red,xpos = 20)
printLn(f,white,blue,xpos = 50)
printLnStyled(l,$l,steelblue,{stylereverse})
printLnStyled(f,$f,rosybrown,{stylereverse})

decho(2)

printLn(s,lime)
printLn(n,brightgreen)
printLn(f,greenyellow)
printLn(l,rosybrown)
decho(2)

printLnRainbow(s,{})
printLnRainbow(n,{})
printLnRainbow(f,{})
printLnrainbow(l,{styleUnderscore})
decho(2)

printLnStyled(s,"t",clrainbow,{styleUnderScore,styleBlink})
decho(2)

# change color upon first separator , hence bicolor ...
# default seperator ":"
printLnBiCol(s,"c",brightgreen,brightwhite)
printLnBiCol(s,"c")  # default colors
printlnBiCol("Junk Food",spaces(1),red,brightblue) # separator is a space
decho(2)

# all in one color , fmtx is a simple formater , but you could use strfmt too if installed
printLn(fmtx(["","","","","","",""],s,spaces(1),n,spaces(1),f,spaces(1),l),greenyellow)      
# all in one color with new background 
print(fmtx(["","","","","","",""],s,spaces(1),n,spaces(1),f,spaces(1),l),brightyellow,brightred)
decho(2)

printLn(s,clrainbow,brightyellow)  
printLn(s,lime)
decho(2)

print(s,black,brightmagenta)
printLn(s &  " ---> this is white at position x = 25",xpos = 25)

printLnStyled("Everyone and the cat likes fresh salmon.","the cat",yellowgreen,{styleUnderScore})
decho(2)
printStyled("123423456576782312345","23",lightseagreen,{stylereverse})
echo()
printLnStyled("The dog blinks . ","dog",rosybrown,{styleUnderScore,styleBlink})

doFinish()
```


Screenshots from cxTest


![Image](http://qqtop.github.io/nimcolors9.png?raw=true)



```nimrod         

import cx
# show the colors
showColors()
dofinish()

```


![Image](http://qqtop.github.io/nimcolors33.png?raw=true)

![Image](http://qqtop.github.io/nimcolors34.png?raw=true)

![Image](http://qqtop.github.io/nimcolors35.png?raw=true)

![Image](http://qqtop.github.io/nimcolors36.png?raw=true)

![Image](http://qqtop.github.io/colorCJKDemo.png?raw=true)

![Image](http://qqtop.github.io/nimcolors10.png?raw=true)

![Image](http://qqtop.github.io/nimcolors13.png?raw=true)



Brought to you by :
  
  
   ![Image](http://qqtop.github.io/gnu2.png?raw=true)  ![Image](http://qqtop.github.io/gnu.png?raw=true)



