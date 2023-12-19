accessing
readOnlyFileNamed: aFileName
	^ (self directoryPath , aFileName) asFileReference readStream