Locks
writeLock: anObject 
	mutex critical: 
			[(locks includesKey: anObject) 
				ifFalse: 
					[locks at: anObject put: #write.
					^ self]].
	self error: 'Write Lock Denied'