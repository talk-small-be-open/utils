*MockGemstone
posixSeconds: aNumber offset: aDuration
	| seconds integerSeconds nanos |
	seconds := aNumber + 2177452800.	"unix epoch constant".
	integerSeconds := seconds truncated.
	integerSeconds = seconds
		ifTrue: [ nanos := 0 ]
		ifFalse: [ nanos := ((seconds - integerSeconds) * NanosInSecond) asInteger ].
	^ self basicNew ticks: (Array with: SqueakEpoch with: integerSeconds with: nanos) offset: aDuration