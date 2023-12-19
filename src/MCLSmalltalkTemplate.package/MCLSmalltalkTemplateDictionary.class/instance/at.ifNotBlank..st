as yet unclassified
at: aKey ifNotBlank: aBlock
	keyValueDictionary at: aKey asSymbol ifPresent: [:value | value ifNotBlank: aBlock]