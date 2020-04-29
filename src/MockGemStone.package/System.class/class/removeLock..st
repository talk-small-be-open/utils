Locks
removeLock: anObject 
	mutex critical: [locks removeKey: anObject ifAbsent: [nil]]