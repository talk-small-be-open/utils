class initialization
initialize
	"self initialize"

	Smalltalk addToStartUpList: self.
	mutex := Semaphore forMutualExclusion.
	stats := Array new: 48.
	persistentCounter := Array new: 128 withAll: 0.
	locks := IdentityDictionary new.
	inTransaction := false.
	self fakeStoneStartup