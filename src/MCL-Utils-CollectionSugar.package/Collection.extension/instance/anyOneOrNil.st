*mcl-utils-collectionsugar
anyOneOrNil
	^self ifEmpty: [nil] ifNotEmpty: [:me | me anyOne]