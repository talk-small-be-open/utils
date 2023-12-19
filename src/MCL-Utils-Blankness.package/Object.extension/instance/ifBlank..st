*mcl-utils-blankness
ifBlank: aBlock
	^self isBlank
		ifTrue: aBlock
		ifFalse: [ self ]