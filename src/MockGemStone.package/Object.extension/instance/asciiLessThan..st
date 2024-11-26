*MockGemStone
asciiLessThan: anObject

"For objects that are not Characters or CharacterCollections, returns the result
 of an ordinary less-than compare.  This method is reimplemented in Character,
 to provide comparison based on the ASCII collating order.

 For Pharo and Squeak the standard #< already uses ASCII collating order"

^ self < anObject
