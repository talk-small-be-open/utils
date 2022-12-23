executing
run
	| commandLine output lastLine outputLines | 
	commandLine := String streamContents: [ :s |
		AdditionalPathsEnv ifNotBlank: [
			s << 'export PATH="'.
			s << AdditionalPathsEnv.
			s << ':$PATH"; '
		].
		
		s << command.
		s << '; echo $?'.

		async ifTrue: [
			s << ' &']].
	
"	stdin ifNotNil: [MCPlatform ]..."
	
	output := MCLPlatform runShellCommand: commandLine.
	
	async ifFalse: [
		"Zeilen holen. Hinweis: lines macht nur bei crlf den Umbruch, deshalb linesDo:"
		outputLines := OrderedCollection new.
		output linesDo: [:each | outputLines add: each].
		
		"On the last character, there will be the error code"
		lastLine := outputLines removeLast.
		
		exitCode := lastLine asInteger ifNil: [1].
		result := MCLPlatform joinCollection: outputLines delimiter: String crlf]