accessing
decrementIfNegative: aBlock
	^self decrementBy: 1 ifLessThan: 0 thenExecute: aBlock