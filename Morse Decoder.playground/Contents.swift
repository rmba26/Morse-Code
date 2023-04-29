// Decrypting morse code message:

let morseCodeDecrypt = [
  
".-": "a",
"-...": "b",
"-.-.": "c",
"-..": "d",
".": "e",
"..-.": "f",
"--.": "g",
"....": "h",
"..": "i",
".---": "j",
"-.-": "k",
".-..": "l",
"--": "m",
"-.": "n",
"---": "o",
".--.": "p",
"--.-": "q",
".-.": "r",
"...": "s",
"-": "t",
"..-": "u",
"...-": "v",
".--": "w",
"-..-": "x",
"-.--": "y",
"--..": "z"

]

var code = ".-. --- -. .- .-.. -..   -... .- .-. .- --. .-   .- .-. ... ..- .- --. .-"

code += " "

var letter: String = ""
var charac = ""
var counter = 0


for item in code {
  
  if item != " " {
    letter.append(item)
    counter = 0
  continue
     
} else {
    counter += 1
    if counter == 3 {
     charac.append(" ")
      
      
    }
    }
    if let alpha = morseCodeDecrypt["\(letter)"] {
      charac.append(alpha)
      letter = ""
      
      
    } 

}
print(charac)

// Encrypting text into morse code

let morseCodeEncrypt = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
]

let textMessage = "ronald baraga arsuaga"

var morseCode = ""

for char in textMessage {
  if char == " "{
  morseCode.append("   ")
} else if let alpha = morseCodeEncrypt["\(char)"] {
      morseCode.append(alpha + " ")
}
}

print(morseCode)
    
