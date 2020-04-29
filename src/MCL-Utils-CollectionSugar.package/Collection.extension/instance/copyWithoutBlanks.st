*mcl-utils-collectionsugar
copyWithoutBlanks
	"Answer a copy of the receiver that does not contain any blanks"

	^self reject: [:each | each isBlank]