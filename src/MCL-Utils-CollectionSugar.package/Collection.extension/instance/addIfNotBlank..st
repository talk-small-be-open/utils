*mcl-utils-collectionsugar
addIfNotBlank: anObject
	^self add: anObject if: anObject isBlank not