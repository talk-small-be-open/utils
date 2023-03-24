*mcl-utils-blankness
ifNotBlank: aBlock
	^ self isBlank
		ifTrue: [self]
		ifFalse: [aBlock cull: self]