as yet unclassified
addAll: aCollection
	array addAll: (aCollection collect: [:each | self sanitizedObject: each])