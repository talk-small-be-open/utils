as yet unclassified
file: aString binaryWriteStreamDo: aBlock
	| stream |
	stream := aString asFileReference binaryWriteStream.
	[aBlock value: stream] ensure: [stream close]