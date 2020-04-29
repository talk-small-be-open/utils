Locks
readLock: anObject ifDenied: aBlock ifChanged: ignored 
	^ (self readLock: anObject) on: Error do: [:ex | aBlock value]