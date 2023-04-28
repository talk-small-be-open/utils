caching
isCached
	"Tell if the receiver is cached or not. In the future,
	this will consider the fact that a cached object may
	become old after some time, and that means that the
	object is NOT cached anymore."

	^ self cache notNil

"	^ false"