*MockGemStone
asPosixSeconds
	^ self asSeconds - (self class epoch offset: 0 seconds) asSeconds - 2177452800	"unix epoch constant"