accessing
asciiReadOnlyFileNamed: aFileName

	^ (self directoryPath , aFileName) asFileReference asciiReadStream