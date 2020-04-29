as yet unclassified
writeObject: anObject toSixxFile: aFilename	inFolder: aFoldername
	| fileStream |
	fileStream := (FileDirectory on: aFoldername) forceNewFileNamed: aFilename.
	anObject sixxOn: fileStream