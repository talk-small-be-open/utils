initialize-release
initialize
	super initialize.
	lock := Semaphore forMutualExclusion.
	value := 0