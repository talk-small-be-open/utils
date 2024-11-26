as yet unclassified
removeDuplicates
	| newArray |
	newArray := OrderedCollection new.
	
	"Remove duplicates but keep order"
	array do: [:each |
		newArray addIfNotPresent: each].
	
	array := newArray
