*mcl-utils-blankness
ifBlank: aTrueBlock ifNotBlank: aFalseBlock
	^ self isBlank
		ifTrue: aTrueBlock
		ifFalse: [aFalseBlock cull: self]