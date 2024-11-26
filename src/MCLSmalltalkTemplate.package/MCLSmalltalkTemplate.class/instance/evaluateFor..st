evaluating
evaluateFor: anObject
	"Evaluates the receiver within for anObject"

"	self isCached ifFalse: [ self cache: (self compileIn: anObject class) ].
	^ self cache valueWithReceiver: anObject arguments: #().
"

	self isCached ifFalse: [ self cache: (self asBlock) ].
	^ (self cache value: anObject) asString.
