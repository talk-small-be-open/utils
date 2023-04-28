instance creation
map: aSelectorCollection collection: anObjectsCollection
	"Wandelt alle Elemente der Collection um und liefert eine neue Collection"
	^MCLSmalltalkTemplateArray newFrom: (anObjectsCollection collect: [:each | self map: aSelectorCollection of: each])