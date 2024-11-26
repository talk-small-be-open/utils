as yet unclassified
sanitizedObject: anObject
	"We convert everything to strings except for the safe report data objects"
	
	anObject ifNil: [ ^ '' ].
	
	((anObject isKindOf: MCLSmalltalkTemplateData) or: [
		"anObject isLiteral and: [anObject isArray not]."
		anObject isKindOfAny: { String. Number. Boolean. UndefinedObject }
		]
	)
		ifTrue: [ ^ anObject ]
		ifFalse: [
			(anObject isCollection) ifTrue: [
				^ MCLSmalltalkTemplateArray newFrom: anObject ].
			
			^ anObject asString ]