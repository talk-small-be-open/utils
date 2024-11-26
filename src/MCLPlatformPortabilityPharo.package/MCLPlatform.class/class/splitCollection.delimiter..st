as yet unclassified
splitCollection: aCollection delimiter: aDelimiter
	"NOT ^aCollection splitOn: aDelimiter."
	^aCollection splitOn: [:each | each = aDelimiter].