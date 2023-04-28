as yet unclassified
convertStringToSelector: aFilename
	| mainPart |
	mainPart := ((aFilename findTokens: '/.') collect: [:eachToken |
		eachToken capitalized select: [ :each | each isAlphaNumeric ]]) joinUsing: '' .

	"Vorangehende Zahlen entfernen"
	[ mainPart first isDigit ]
		whileTrue: [ mainPart := mainPart allButFirst ].

"	extension := (aFilename copyAfterLast: $.) asLowercase capitalized."
	^ (mainPart uncapitalized, ':') asSymbol