Locks
writeLockAll: anObject ifIncomplete: aBlock
	[ self writeLockAll: anObject ]
		on: Error
		do: [ :ex | aBlock value ]