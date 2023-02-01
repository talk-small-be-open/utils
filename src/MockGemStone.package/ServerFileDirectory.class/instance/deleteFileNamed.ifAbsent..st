accessing
deleteFileNamed:aFileName ifAbsent:aBlock
	|file|
	file:=(self directoryPath, aFileName) asFileReference .
	file exists ifFalse:[^aBlock value].
	file delete