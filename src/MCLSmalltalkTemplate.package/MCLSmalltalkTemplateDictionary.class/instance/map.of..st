as yet unclassified
map: aSelectorCollection of: anObject
	"aSelectorCollection is a collection of either single symbol or association with symbol->valuable"
	aSelectorCollection do: [:each |
		| name valuable |
		"Derive name from single symbol or association key"
		name := each isSymbol
			ifTrue: [each]
			ifFalse: [each key].
		valuable := each value.

		self at: name put: ((valuable value: anObject) ifNil: [''])]