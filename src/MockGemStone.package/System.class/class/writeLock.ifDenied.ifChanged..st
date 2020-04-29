Locks
writeLock: anObject ifDenied: aBlock ifChanged: ignored 
	^ [self writeLock: anObject] on: Error do: [:ex | aBlock value]