as yet unclassified
at: aKey put: aValue
	^keyValueDictionary at: aKey asSymbol put: (self sanitizedObject: aValue)