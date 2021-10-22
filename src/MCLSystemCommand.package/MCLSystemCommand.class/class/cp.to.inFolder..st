as yet unclassified
cp: aSource to: aTarget inFolder: aFolderString
	^self run: 'cd "', aFolderString, '" && cp "', aSource, '" "', aTarget, '"'