*MockGemStone
fromString: aString 
	| rs ws scale |
	" DTR do reference at Locale decimalPoint "	
	rs := aString readStream.
	ws := String new writeStream.
	rs atEnd ifTrue: [ ^ self error: 'incorrect format' ].
	('+-' includes: rs peek) ifTrue: 
		[ ws nextPut: rs next.
		rs atEnd ifTrue: [ ^ self error: 'incorrect format' ] ].
	[ rs atEnd not and: [ '0123456789' includes: rs peek ] ] whileTrue: [ ws nextPut: rs next ].
	scale := 0.
	
	(rs atEnd not and: [ rs peekFor: ( Locale decimalPoint at:1 ) ]) ifTrue: 
		[ [ rs atEnd not and: [ '0123456789' includes: rs peek ] ] whileTrue: 
			[ ws nextPut: rs next.
			scale := scale + 1 ] ].
	^ self 
		newFromNumber: ws contents asNumber / (10 raisedTo: scale)
		scale: scale