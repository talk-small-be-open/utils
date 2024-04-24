as yet unclassified
initialize
	| uniqueName |
	super initialize.
	
	uniqueName := UUID new asString.
	fileName := uniqueName, '.tempfile'.
	fileFolder := self tempDirectory.
	
"	file := (SpFilename named: self filePath) writeStream.
"	