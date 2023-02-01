Locks
readLockAll: anObject ifIncomplete: aBlock
	[ self readLockAll: anObject ]
		on: Error
		do: [ :ex | aBlock value ]