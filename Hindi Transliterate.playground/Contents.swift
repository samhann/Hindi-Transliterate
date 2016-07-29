//: HINGLISH TO HINDI :

import UIKit

// make a set of valid hindi words ....


var words : [String : String] = [
    
    "की"  :"of",
    "और"  :"and",
    "एक"  :"a, one",
    "तक":  "till, up to",
    "में"  :"in",
    "है"  :"is",
    "आप"  :"you",
    "कि"  :"that",
    "यह"  :"it",
    "वह"  :"he",
    "था"  :"was",
    "लिए"  :"for",
    "पर"  :"on",
    "केवल"  :"only",
    "सदा"  :"always",
    "साथ"  :"with",
    "उसके"  :"his",
    "वे"  :"they",
    "मैं"  :"I",
    "बाद"  :"after",
    "होना"  :"be",
    "खाना"  :"to eat, food",
    "माँ"  :"mother",
    "से"  :"from",
    "या"  :"or",
    "नाम"  :"name",
    "घर"  :"home",
    "द्वारा"  :"through",
    "शब्द"  :"word",
    "लेकिन"  :"but",
    "नहीं"  :"no",
    "क्या"  :"what",
    "सब"  :"all",
    "थे"  :"were",
    "हम"  :"we",
    "जब"  :"when",
    "आपके"  :"yours",
    "भाषा"  :"language",
    "कहा"  :"said",
    "वहाँ"  :"there",
    "उपयोग"  :"use",
    "देश"  :"country, land",
    "प्रत्येक"  :"every",
    "जो"  :"who",
    "हमारा"  :"our",
    "करना"  :"to do",
    "कैसे"  :"how",
    "उनके"  :"their",
    "अगर"  :"if",
    "होगा"  :"will be",
    "ऊपर"  :"on, above",
    "अन्य"  :"other",
    "के"  :"of",
    "उधर"  :"there",
    "बहुत"  :"very",
    "फिर"  :"again",
    "उन"  :"them",
    "इन"  :"these",
    "इसलिए"  :"that is why, because of that",
    "कुछ"  :"some",
    "उसे"  :"to him, to her",
    "अच्छा"  :"good, well, nice",
    "बनाना"  :"to build, to construct",
    "जैसा"  :"as, like",
    "बोला"  :"spoken",
    "सुना"  :"heard",
    "समय"  :"time",
    "सामने"  :"in front",
    "देखना"  :"to look",
    "कम"  :"less",
    "अधिक"  :"more",
    "लिखना"  :"to write",
    "जाना"  :"to go",
    "धन्यवाद"  :"thank you",
    "संख्या"  :"number, count",
    "कोई"  :"someone, something",
    "रास्ता"  :"way",
    
    "लोग"  :"people",
    "मेरे"  :"mine",
    "पहले"  :"before",
    "पानी"  :"water",
    "किया"   :"done",
    "पीना"  :"to drink",
    "कौन"  :"who",
    "दो"  :"give, two",
    "अब"  :"now",
    "भी"  :"also, as well, too",
    "दोपहर"  :"noon",
    "नीचे"  :"below",
    "दिन"  :"day",
    "रात"  :"night",
    "मिल"  :"meet",
    "आना"  :"to come, come",
    "बनाया"  :"build",
    "आराम"  :"rest, relax",
    "भाग"  :"part",
    "सुबह"  :"morning",
    "सोना"  :"to sleep, gold"
]


var wordSet = Set<String>()
wordSet = Set(words.keys)
    


struct Sounds {
    
    var letters : [String]
    var vowels : [String]
}


var letterMappings : [String : Sounds] = [

    "a"     : Sounds(letters: ["अ"], vowels: ["","ा"]),
    "aa"    : Sounds(letters: ["आ"], vowels: ["ा"]),
    "m"     : Sounds(letters: ["म"], vowels: []),
    "b"     : Sounds(letters: ["ब"], vowels: []),
    "e"     : Sounds(letters: ["ए","इ"], vowels: ["","ि","ी","ई","े"]),
    "ai"    : Sounds(letters: ["ऐ"], vowels: ["ै"]),
    "i"     : Sounds(letters: ["इ"], vowels: ["ि","ी","ई"]),
    "ee"    : Sounds(letters: ["ई"], vowels: ["ि","ी"]),
    "u"     : Sounds(letters: ["उ"], vowels: ["ु","ू"]),
    "oo"    : Sounds(letters: ["ऊ"], vowels: ["ु","ू"]),
    "o"     : Sounds(letters: ["ओ"], vowels: ["ो"]),
    "ou"    : Sounds(letters: ["औ"], vowels: ["ौ"]),
    "au"    : Sounds(letters: ["औ"], vowels: ["ौ"]),
    "r"     : Sounds(letters: ["ऋ","र"], vowels: []),
    "ru"    : Sounds(letters: ["ൃ"], vowels: []),
    "k"     : Sounds(letters:["क"] ,vowels:[]) ,
    "kh"    : Sounds(letters:["ख"] ,vowels:[]) ,
    "g"     : Sounds(letters:["ग"] ,vowels:[]) ,
    "gh"    : Sounds(letters:["घ"] ,vowels:[] ) ,
    "ng"    : Sounds(letters:["ङ"] ,vowels:[]) ,
    "ch"    :Sounds(letters:["च","छ"] ,vowels:[]) ,
    "chh"   : Sounds(letters:["छ"] ,vowels:[]) ,
    "j"     : Sounds(letters:["ज","झ"] ,vowels:[]) ,
    "nj"    : Sounds(letters:["ञ"] ,vowels:[]),
    "d"     : Sounds(letters:["ड","ढ","द"] ,vowels:[]) ,
    "dh"    : Sounds(letters:["ध"] , vowels:[]) ,
    "n"     : Sounds(letters:["न","ण"] ,vowels:["ँ","ं",""]) ,
    "f"     : Sounds(letters:["फ"] ,vowels:[]) ,
    "t"     : Sounds(letters:["ट","ठ"] ,vowels:[]) ,
    "th"    : Sounds(letters:["त","थ","द","ध"] ,vowels:[]) ,
    "p"     : Sounds(letters:["प"] ,vowels:[]) ,
    "bh"    : Sounds(letters:["भ"] ,vowels:[]) , "y" :Sounds(letters:["य"] ,vowels:[]) ,
    "l"     :Sounds(letters:["ल"] ,vowels:[]) ,
    "v"     : Sounds(letters:["व"] ,vowels:[]) ,
    "w"     : Sounds(letters:["व"] ,vowels:[]) ,
    "sh"    : Sounds(letters:["श","ष"] ,vowels:[]) ,
    "s"     : Sounds(letters:["स"] ,vowels:[]) ,
    "h"     : Sounds(letters:["ह"] ,vowels:[]) ,
    "*"     : Sounds(letters:[""] ,vowels:["्",""]),
    "$"     : Sounds(letters: ["ം"], vowels: [])
    
]

func longestMatch(str : String)->(String?,String)
{
    var longest : String? = nil
    var rest : String = str
    
    for i in 0..<str.characters.count
    {
        
        let startIndex = str.startIndex.advancedBy(0) //advance as much as you like
        let endIndex = str.startIndex.advancedBy(i)
        let range = startIndex...endIndex
        
        let sub = str.substringWithRange(range)
        
        
        if let match = letterMappings[sub] {
            longest = sub
            
            let start = str.startIndex.advancedBy(i+1)
            let end   = str.endIndex.advancedBy(0)
            let restRange = start ..< end
            rest    = str.substringWithRange(restRange)
            
        }
        
    }
    
    return (longest,rest)
    
}




func preprocessWord(word : String) -> String
{
    
    
    var result = ""
    
    let consonants = "bcdfghjklmpnqrstvwyxz"
    let characters = word.characters
    var previous = characters[characters.startIndex]
    
    for character in word.characters.dropFirst() {
        
        
        

        result += String(previous)

        let current = String(character)
        let prev = String(previous)
        
        if (consonants.containsString(current) && consonants.containsString(prev) && letterMappings[prev+current] == nil)  {
            
            result += "*"
        }

        
        previous = character
        
        
    }
    
    result += String(previous)

    return result

}



func splitIntoComponents(let theWord : String)->[String]
{
    var matches : [String] = []
    var theString = preprocessWord(theWord)
    
    while (true) {
        let (match , rest) = longestMatch(theString)
        
        if let theMatch = match {
            matches.append(theMatch)
            theString = rest
        }
        else {
            break;
        }
    }
    

    return matches
}






func listOfListsForSounds(let matches : [String])->[[String]]
{
    var matchedLists  : [[String]] = []
    
    for (index,match) in matches.enumerate() {
        
        let mapping = letterMappings[match]!
        
        // for first letter we can use the letter for a as in amma .. but in between the words we use vowel sound if its available
        
        var appendList : [String] = []
        
        if (mapping.vowels.count != 0 && index > 0) {
            appendList += mapping.vowels
        }
            appendList += mapping.letters
        
        matchedLists.append(appendList)
    }

    return matchedLists
}



func flattenLists( list : [[String]])->[String]
{
    if (list.count == 0) {
        return []
    }
    
    if (list.count == 1) {
        return list[0]
    }
        
    else {
        
        let firstList = list[0]
        
        var anotherList = list
        anotherList.removeFirst()
        let flattenedRest =  flattenLists(anotherList)
        var returnList  : [String] = []
        
        for string in firstList {
            
            for rt in flattenedRest {
                
                returnList.append(string + rt)
            }
        }
        
        return returnList
    }

    

}


func convertToPossibleWords( manglish: String)->[String]
{
    let matches = splitIntoComponents(manglish)
    let listOfLists = listOfListsForSounds(matches)
    let possibleWords = flattenLists(listOfLists)
    let validWords    = possibleWords.filter { wordSet.contains($0) }
    
    return Array(Set(validWords))
}


print(convertToPossibleWords("dwara"))
print(convertToPossibleWords("desh"))
print(convertToPossibleWords("sadaa"))

