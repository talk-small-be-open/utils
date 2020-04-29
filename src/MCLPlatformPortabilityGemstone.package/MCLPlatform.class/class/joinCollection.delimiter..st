as yet unclassified
joinCollection: aCollection delimiter: aDelimiter
	^ String
		streamContents: [:stream | aCollection
				do: [:each | stream nextPutAll: each asString]
				separatedBy: [stream nextPutAll: aDelimiter]]