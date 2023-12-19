as yet unclassified
at: aKey ifBlank: aBlock
	^ (self lookupKey: aKey) ifBlank: aBlock