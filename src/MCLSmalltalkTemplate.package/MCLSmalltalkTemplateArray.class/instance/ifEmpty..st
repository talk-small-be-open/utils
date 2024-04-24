testing
ifEmpty: aBlock
	^self isEmpty
		ifFalse: [self]
		ifTrue: [aBlock value]