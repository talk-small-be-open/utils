Locks
removeLockAll: anObject
	mutex critical: [ locks removeKey: anObject ifAbsent: [ nil ] ]