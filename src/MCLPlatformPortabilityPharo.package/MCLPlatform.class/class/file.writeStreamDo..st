as yet unclassified
file: aString writeStreamDo: aBlock
	| stream |
	stream := aString asFileReference writeStream.
	[aBlock value: stream] ensure: [stream close]