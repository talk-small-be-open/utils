as yet unclassified
collect: aSelectorCollection collection: anObjectsCollection
	"Wandelt alle Elemente der Collection um und liefert eine neue Collection"
	^self newFrom: (anObjectsCollection collect: [:each | self collect: aSelectorCollection of: each])