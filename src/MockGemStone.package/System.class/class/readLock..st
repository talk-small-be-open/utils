Locks
readLock: anObject 
	mutex critical: 
			[(locks includesKey: anObject) 
				ifFalse: 
					[locks at: anObject put: #read.
					^ self]].
	^ self error: 'Read Lock Denied'