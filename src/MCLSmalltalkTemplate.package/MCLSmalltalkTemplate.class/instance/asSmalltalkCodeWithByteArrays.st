code generation
asSmalltalkCodeWithByteArrays
	"Returns the equivalent version of the receiver as Smalltalk code"

	| sttOpenIndex sttCloseIndex lastIndex sttCodeIndex stream smalltalkExpression withErrorGuard |

	withErrorGuard := false.
	
	stream := String new writeStream.
	stream
		nextPutAll: '[:me |';
		cr;
		nextPutAll: '"Generated at: ';
		nextPutAll: DateAndTime now printString;
		nextPutAll: '"';
		cr;
		nextPutAll: '| out |';
		cr;
		nextPutAll: 'out := GRPlatform current readWriteByteStream.';
		cr.

	"Exception handling to prevent bad code in a template from opening a debugger"
	withErrorGuard ifTrue: [
		stream nextPutAll: '['].

	lastIndex := 1.
	
	[ (sttOpenIndex := self sttCode indexOfSubCollection: '<?stt' startingAt: lastIndex) > 0]
		whileTrue: [
			| directOutput |
			
			"Write literal output as String"
			self writeByteArrayOutputCodeFor: (self sttCode copyFrom: lastIndex to: (sttOpenIndex - 1)) on: stream.

			sttCloseIndex := self sttCode
				indexOfSubCollection: '?>'
				startingAt: sttOpenIndex
				ifAbsent: [ ^ self error: 'Missing closing tag' ].
			
			sttCodeIndex := sttOpenIndex + 5.

			"Check if it is a '<?stt='' syntax"
			directOutput := (sttCode at: sttCodeIndex) = $=.


			directOutput ifTrue: [
				"Exception handling to prevent bad code in a template from opening a debugger"
				withErrorGuard ifTrue: [stream nextPutAll: '[' ].
				stream nextPutAll: 'out nextPutAll: (('.
				sttCodeIndex := sttCodeIndex + 1.
			].			

			smalltalkExpression := (sttCode copyFrom: sttCodeIndex to: sttCloseIndex - 1) trimBoth.

			stream nextPutAll: smalltalkExpression.

			directOutput ifTrue: [
				stream nextPutAll: ') asByteArray).'.
				sttCodeIndex := sttCodeIndex + 1.
				"Exception handling to prevent bad code in a template from opening a debugger"
				withErrorGuard ifTrue: [
					stream nextPutAll: '] on: Error do: [:error | out nextPutAll: ''Error in template code: ''. out nextPutAll: error description].'].
			].						

			"Automagically add a period if not already there."
			directOutput ifFalse: [
				(smalltalkExpression endsWithAnyOf: #('|' '[' '(' '{' '.'))
					ifFalse: [ 
						stream nextPut: $.]].

			stream cr.
			lastIndex := sttCloseIndex + 2.
		].

	self writeByteArrayOutputCodeFor: (self sttCode copyFrom: lastIndex to: sttCode size) on: stream.

	"Overall Exception handling to prevent bad code in a template from opening a debugger"
	withErrorGuard ifTrue: [
		stream nextPutAll: '] on: Error do: [:error | out nextPutAll: ''Error in template code: ''. out nextPutAll: error description].'].

	stream
		cr;
		nextPutAll: 'out contents';
		nextPutAll: ']';
		cr.

	^ stream contents
