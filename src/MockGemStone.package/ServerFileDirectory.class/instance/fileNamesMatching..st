accessing
fileNamesMatching: matchString
	^ (self directoryPath asFileReference filesMatching: matchString) collect: [ :ea | ea basename ]