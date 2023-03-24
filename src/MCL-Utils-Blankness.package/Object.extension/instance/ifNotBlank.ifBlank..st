*mcl-utils-blankness
ifNotBlank: aFalseBlock ifBlank: aTrueBlock 
	^ self isBlank
		ifTrue: aTrueBlock
		ifFalse: [aFalseBlock cull: self]