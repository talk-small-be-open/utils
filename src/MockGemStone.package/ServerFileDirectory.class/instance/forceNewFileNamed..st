instance creation
forceNewFileNamed: aFileName
	^ GsFakeWriteStream on: (self directoryPath, aFileName) asFileReference
