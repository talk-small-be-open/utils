instance creation
newInFolder: aPath
	^ self basicNew
		setTempDirectory: aPath;
		initialize;
		yourself