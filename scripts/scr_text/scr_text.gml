function func_text_clear()
{
	for (var i = 0; i < array_length(arrayString); i++)
	{
		arrayString[i] = ""
	}
}
function func_text(xx, yy, text, width)
{
    var wordsArray = string_split(text, " ");
	var line = 0
    var maxLineWidth = width;
    var totalLineWidth = 0;
    var stringLine = "";
    var lineNum = 0;
    var arrayLine = []; // Create an array to store lines
	
    for (var i = 0; i < array_length(wordsArray); i++)
    {
        var wordLength = string_length(wordsArray[i]);
        // Check if adding the current word would exceed the max width
        if (totalLineWidth + wordLength <= maxLineWidth)
        {
            stringLine += wordsArray[i] + " ";
            totalLineWidth += wordLength + 1; // Account for the space
        }
        else
        {
            // Save the current line and start a new line
            arrayLine[lineNum] = stringLine;
            lineNum++;
            totalLineWidth = wordLength + 1; // Reset total width
            stringLine = wordsArray[i] + " ";
        }
    }

    // Add the last line (if any)
    if (stringLine != "")
    {
        arrayLine[lineNum] = stringLine;
    }
	var i = 0
	var sep = 6
	var lineHeight = 10
	var lineWidth = width * sep
	var letterPosition = ((sep * i) - (lineWidth * line))/sep
	
	for (var a = 0; a < array_length(arrayLine); a++)
	{
		stringLine = arrayLine[a]
		for (var i = 0; i < string_length(stringLine); i++)
		{
			arrayString[i] = string_char_at(stringLine, i+1);
		}
		for (var i = 0; i < array_length(arrayString); i++)
		{
			switch arrayString[i]
			{
				case "/":
				arrayText[i] = slash_back
				break
				case "\\":
				arrayText[i] = slash_front
				break
				case "(":
				arrayText[i] = para_open
				break
				case ")":
				arrayText[i] = para_closed
				break
				case ",":
				arrayText[i] = comma
				break
				case ":":
				arrayText[i] = colon
				break
				case ".":
				arrayText[i] = period
				break
				case "?":
				arrayText[i] = question_mark
				break
				case "!":
				arrayText[i] = exclamation_mark
				break			
				case "\"":
				arrayText[i] = double_quotation_mark
				break			
				case "'":
				arrayText[i] = single_quotation_mark
				break			
				case "0":
				arrayText[i] = _0
				break
				case "1":
				arrayText[i] = _1
				break
				case "2":
				arrayText[i] = _2
				break
				case "3":
				arrayText[i] = _3
				break
				case "4":
				arrayText[i] = _4
				break
				case "5":
				arrayText[i] = _5
				break
				case "6":
				arrayText[i] = _6
				break			
				case "7":
				arrayText[i] = _7
				break			
				case "8":
				arrayText[i] = _8
				break			
				case "9":
				arrayText[i] = _9
				break						
				case " ":
				arrayText[i] = whitespace
				break;	
				case "a":
				arrayText[i] = aa;
				break;
				case "b":
				arrayText[i] = bb;
				break;
				case "c":
				arrayText[i] = cc;
				break;			
				case "d":
				arrayText[i] = dd;
				break;
				case "e":
				arrayText[i] = ee;
				break;
				case "f":
				arrayText[i] = ff;
				break;
				case "g":
				arrayText[i] = gg;
				break;
				case "h":
				arrayText[i] = hh;
				break;
				case "i":
				arrayText[i] = ii;
				break;
				case "j":
				arrayText[i] = jj;
				break;
				case "k":
				arrayText[i] = kk;
				break;
				case "l":
				arrayText[i] = ll;
				break;
				case "m":
				arrayText[i] = mm;
				break;
				case "n":
				arrayText[i] = nn;
				break;
				case "o":
				arrayText[i] = oo;
				break;
				case "p":
				arrayText[i] = pp;
				break;
				case "q":
				arrayText[i] = qq;
				break;
				case "r":
				arrayText[i] =rr;
				break;
				case "s":
				arrayText[i] = ss;
				break;
				case "t":
				arrayText[i] = tt;
				break;
				case "u":
				arrayText[i] = uu;
				break;
				case "v":
				arrayText[i] = vv;
				break;
				case "w":
				arrayText[i] = ww;
				break;
				case "x":
				arrayText[i] = xxx;
				break;
				case "y":
				arrayText[i] = yyy;
				break;
				case "z":
				arrayText[i] = zz;
				break;
				case "A":
				arrayText[i] = A;
				break;
				case "B":
				arrayText[i] = B;
				break;
				case "C":
				arrayText[i] = C;
				break;
				case "D":
				arrayText[i] = D;
				break;
				case "E":
				arrayText[i] = E;
				break;
				case "F":
				arrayText[i] = F;
				break;			
				case "G":
				arrayText[i] = G;
				break;	
				case "H":
				arrayText[i] = H;
				break;				
				case "I":
				arrayText[i] = I;
				break;			
				case "J":
				arrayText[i] = J
				break;	
				case "K":
				arrayText[i] = K
				break;	
				case "L":
				arrayText[i] = L
				break;				
				case "M":
				arrayText[i] = M
				break;	
				case "N":
				arrayText[i] = N
				break;	
				case "O":
				arrayText[i] = O
				break;	
				case "P":
				arrayText[i] = P
				break;				
				case "Q":
				arrayText[i] = Q
				break;		
				case "R":
				arrayText[i] = R
				break;					
				case "S":
				arrayText[i] = S
				break;		
				case "T":
				arrayText[i] = T
				break;		
				case "U":
				arrayText[i] = U
				break;			
				case "V":
				arrayText[i] = V
				break;	
				case "W":
				arrayText[i] = W
				break;	
				case "X":
				arrayText[i] = X
				break;	
				case "Y":
				arrayText[i] = Y
				break;	
				case "Z":
				arrayText[i] = Z
				break;	
				default:
				arrayText[i] = whitespace
				break;
			}
		}
		for (var i = 0; i < array_length(arrayText); i++)
		{
			lineWidth = width * sep
			letterPosition = ((sep * i) - (lineWidth * line))/sep
			draw_sprite_ext(arrayText[i], 0, xx + (letterPosition * sep), yy+(lineHeight * a), 1, 1, 0, c_white, 1)
		}
		func_text_clear()
	}
}
