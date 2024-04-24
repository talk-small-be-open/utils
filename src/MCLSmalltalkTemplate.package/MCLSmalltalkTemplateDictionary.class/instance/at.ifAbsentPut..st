accessing
at: aKey ifAbsentPut: aBlock
	^ keyValueDictionary at: aKey asSymbol ifAbsentPut: [
		self sanitizedObject: aBlock value ]