as yet unclassified
lns: aSource to: aTarget inFolder: aFolderString
	^self run: 'cd "', aFolderString, '" && ln -s "', aSource, '" "', aTarget, '"'