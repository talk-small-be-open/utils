as yet unclassified
compileInto: aClass named: aNameString
	"Compiles the smalltalk template as Smalltalk code into a class as a method"
	| code |
	code := String streamContents: [ :stream | 
		stream
			nextPutAll: (self class convertStringToSelector: aNameString);
			nextPutAll: ' aDataObject';
			nextPut: Character cr;
			nextPutAll: '^';
			nextPutAll: self asSmalltalkCode;
			nextPutAll: ' value: aDataObject'].
	GRPlatform current
		compile: code
		into: aClass
		classified: #'generated-templates'