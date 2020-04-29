as yet unclassified
openReadOnServer: aFileName
	^(FileStream readOnlyFileNamed: aFileName)
		ascii;
		yourself