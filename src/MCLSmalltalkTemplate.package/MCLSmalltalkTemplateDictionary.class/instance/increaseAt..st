accessing
increaseAt: aKey
	| currentValue |
	currentValue := keyValueDictionary at: aKey asSymbol.
	
	currentValue isNumber ifFalse: [ currentValue := 0 ].
	
	^ keyValueDictionary at: aKey asSymbol put: (currentValue + 1)