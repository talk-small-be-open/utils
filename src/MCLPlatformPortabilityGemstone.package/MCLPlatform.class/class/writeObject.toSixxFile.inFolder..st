as yet unclassified
writeObject: anObject toSixxFile: aFilename	inFolder: aFoldername
	^ GUGemStoneSixxUtil new 
		writeObject: anObject
		toFile: aFilename
		inFolder: aFoldername