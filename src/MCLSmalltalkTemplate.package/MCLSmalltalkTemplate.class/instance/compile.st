compiling
compile
	"Compiles the receiver's template in aClass and returns a BlockClosure"

	| smalltalkCode |
	smalltalkCode := self asSmalltalkCode.

	"	self logInfo: ('Kompiliere STT template code: ', smalltalkCode).
	GRPlatform current write: smalltalkCode toFile: 'smalltalk_code_stt.st' inFolder: '/tmp'."

	"	^self class evaluatorClass evaluate: smalltalkCode for: self logged: false"

	^ nil compiler
		source: smalltalkCode;
		evaluate