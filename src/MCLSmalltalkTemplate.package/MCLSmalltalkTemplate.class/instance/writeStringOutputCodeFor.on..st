code generation
writeStringOutputCodeFor: aString on: aStream
	"Writes on aStream the required Smalltalk code for outputing aString on 'out'"

	aString ifEmpty: [^self].

	aStream
		nextPutAll: 'out nextPutAll: '.

	"Double quoting safe printing on the stream"
	aString asString storeOn: aStream.

	aStream
		nextPutAll: '.';
		cr.