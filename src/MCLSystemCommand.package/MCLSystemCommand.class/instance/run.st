executing
run
	| commandLine output lastLine outputLines | 
	commandLine := command, '; echo $?'.

	async ifTrue: [commandLine := commandLine, ' &'].
	
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