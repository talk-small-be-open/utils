accessing
decrementBy: aNumber ifLessThan: minNumber thenExecute: aBlock 
	^ lock critical:
		[value - aNumber < minNumber
				ifTrue: [aBlock value]
				ifFalse: 
					[value := value - aNumber.
					self]]