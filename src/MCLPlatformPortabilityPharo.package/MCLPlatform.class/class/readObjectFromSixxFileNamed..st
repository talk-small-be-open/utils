as yet unclassified
readObjectFromSixxFileNamed: aFilename
	| fileStream |
	fileStream := FileDirectory default readOnlyFileNamed: aFilename.
	^Object readSixxFrom: fileStream contents