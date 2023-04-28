as yet unclassified
groupsOf: aNumber atATimeDo: aBlock
	| arrayCopy leftoverCount paddingCount payloadClass |

	self isEmpty ifTrue: [^self].
	
	arrayCopy := array copy.

	payloadClass := arrayCopy first class.

	leftoverCount := arrayCopy size \\ aNumber.
	paddingCount := leftoverCount isZero
		ifTrue: [0]
		ifFalse: [aNumber - leftoverCount].

	"We add a couple of empty arrays, so that we have complete groups of aNumber items
	and therefore all items in the collection will be touched, without leftovers"
	paddingCount timesRepeat: [
			arrayCopy add: payloadClass new].
		
	arrayCopy groupsOf: aNumber atATimeDo: aBlock