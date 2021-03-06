import cx,strfmt,colors,strutils,cxutils


# the original colorNames from colors.nim 
let colorNamesOrig* = [
    ("aliceblue", colAliceBlue),
    ("antiquewhite", colAntiqueWhite),
    ("aqua", colAqua),
    ("aquamarine", colAquamarine),
    ("azure", colAzure),
    ("beige", colBeige),
    ("bisque", colBisque),
    ("black", colBlack),
    ("blanchedalmond", colBlanchedAlmond),
    ("blue", colBlue),
    ("blueviolet", colBlueViolet),
    ("brown", colBrown),
    ("burlywood", colBurlyWood),
    ("cadetblue", colCadetBlue),
    ("chartreuse", colChartreuse),
    ("chocolate", colChocolate),
    ("coral", colCoral),
    ("cornflowerblue", colCornflowerBlue),
    ("cornsilk", colCornsilk),
    ("crimson", colCrimson),
    ("cyan", colCyan),
    ("darkblue", colDarkBlue),
    ("darkcyan", colDarkCyan),
    ("darkgoldenrod", colDarkGoldenRod),
    ("darkgray", colDarkGray),
    ("darkgreen", colDarkGreen),
    ("darkkhaki", colDarkKhaki),
    ("darkmagenta", colDarkMagenta),
    ("darkolivegreen", colDarkOliveGreen),
    ("darkorange", colDarkorange),
    ("darkorchid", colDarkOrchid),
    ("darkred", colDarkRed),
    ("darksalmon", colDarkSalmon),
    ("darkseagreen", colDarkSeaGreen),
    ("darkslateblue", colDarkSlateBlue),
    ("darkslategray", colDarkSlateGray),
    ("darkturquoise", colDarkTurquoise),
    ("darkviolet", colDarkViolet),
    ("deeppink", colDeepPink),
    ("deepskyblue", colDeepSkyBlue),
    ("dimgray", colDimGray),
    ("dodgerblue", colDodgerBlue),
    ("firebrick", colFireBrick),
    ("floralwhite", colFloralWhite),
    ("forestgreen", colForestGreen),
    ("fuchsia", colFuchsia),
    ("gainsboro", colGainsboro),
    ("ghostwhite", colGhostWhite),
    ("gold", colGold),
    ("goldenrod", colGoldenRod),
    ("gray", colGray),
    ("green", colGreen),
    ("greenyellow", colGreenYellow),
    ("honeydew", colHoneyDew),
    ("hotpink", colHotPink),
    ("indianred", colIndianRed),
    ("indigo", colIndigo),
    ("ivory", colIvory),
    ("khaki", colKhaki),
    ("lavender", colLavender),
    ("lavenderblush", colLavenderBlush),
    ("lawngreen", colLawnGreen),
    ("lemonchiffon", colLemonChiffon),
    ("lightblue", colLightBlue),
    ("lightcoral", colLightCoral),
    ("lightcyan", colLightCyan),
    ("lightgoldenrodyellow", colLightGoldenRodYellow),
    ("lightgrey", colLightGrey),
    ("lightgreen", colLightGreen),
    ("lightpink", colLightPink),
    ("lightsalmon", colLightSalmon),
    ("lightseagreen", colLightSeaGreen),
    ("lightskyblue", colLightSkyBlue),
    ("lightslategray", colLightSlateGray),
    ("lightsteelblue", colLightSteelBlue),
    ("lightyellow", colLightYellow),
    ("lime", colLime),
    ("limegreen", colLimeGreen),
    ("linen", colLinen),
    ("magenta", colMagenta),
    ("maroon", colMaroon),
    ("mediumaquamarine", colMediumAquaMarine),
    ("mediumblue", colMediumBlue),
    ("mediumorchid", colMediumOrchid),
    ("mediumpurple", colMediumPurple),
    ("mediumseagreen", colMediumSeaGreen),
    ("mediumslateblue", colMediumSlateBlue),
    ("mediumspringgreen", colMediumSpringGreen),
    ("mediumturquoise", colMediumTurquoise),
    ("mediumvioletred", colMediumVioletRed),
    ("midnightblue", colMidnightBlue),
    ("mintcream", colMintCream),
    ("mistyrose", colMistyRose),
    ("moccasin", colMoccasin),
    ("navajowhite", colNavajoWhite),
    ("navy", colNavy),
    ("oldlace", colOldLace),
    ("olive", colOlive),
    ("olivedrab", colOliveDrab),
    ("orange", colOrange),
    ("orangered", colOrangeRed),
    ("orchid", colOrchid),
    ("palegoldenrod", colPaleGoldenRod),
    ("palegreen", colPaleGreen),
    ("paleturquoise", colPaleTurquoise),
    ("palevioletred", colPaleVioletRed),
    ("papayawhip", colPapayaWhip),
    ("peachpuff", colPeachPuff),
    ("peru", colPeru),
    ("pink", colPink),
    ("plum", colPlum),
    ("powderblue", colPowderBlue),
    ("purple", colPurple),
    ("red", colRed),
    ("rosybrown", colRosyBrown),
    ("royalblue", colRoyalBlue),
    ("saddlebrown", colSaddleBrown),
    ("salmon", colSalmon),
    ("sandybrown", colSandyBrown),
    ("seagreen", colSeaGreen),
    ("seashell", colSeaShell),
    ("sienna", colSienna),
    ("silver", colSilver),
    ("skyblue", colSkyBlue),
    ("slateblue", colSlateBlue),
    ("slategray", colSlateGray),
    ("snow", colSnow),
    ("springgreen", colSpringGreen),
    ("steelblue", colSteelBlue),
    ("tan", colTan),
    ("teal", colTeal),
    ("thistle", colThistle),
    ("tomato", colTomato),
    ("turquoise", colTurquoise),
    ("violet", colViolet),
    ("wheat", colWheat),
    ("white", colWhite),
    ("whitesmoke", colWhiteSmoke),
    ("yellow", colYellow),
    ("yellowgreen", colYellowGreen)]



superheader("Extracting RGB values from Colors.nim colorNames")

for x in 0.. <colorNamesOrig.len:
      var cn = colorNamesOrig[x][0]
      var cnc = colorNamesOrig[x][1]
      var cnq = colorNames[x][1]
      #printLnBiCol("{:<21} : {}".fmt(x[0] , $extractRGB(x[1])),":",yellowgreen,salmon)
      printLn("{:<21} : {}".fmt(cn , $extractRGB(cnc)),cnq)
     

echo()
printLn("Colors and RGB values as available in original colors.nim only",lime)

      
doFinish()