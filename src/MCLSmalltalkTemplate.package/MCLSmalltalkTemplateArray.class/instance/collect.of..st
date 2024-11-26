as yet unclassified
collect: aSelectorCollection of: anObject
	"aSelectorCollection is a collection of either single symbol or valuable"
	aSelectorCollection do: [:each |
		self add: ((each value: anObject) ifNil: [''])]