accessing
fileExists:aFileName

	^(self directoryPath, aFileName) asFileReference exists