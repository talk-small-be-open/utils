Host System Access
performOnServer: aString
	| pipeClass shell output |
	pipeClass := Smalltalk at: #PipeableOSProcess ifAbsent: [ ^ self error: 'CommandShell not available' ].
	shell := pipeClass command: aString
	environment:
			(path
				ifNotNil: [ 
					Dictionary new
						at: #PATH put: path;
						yourself ])
		workingDir: nil
		input: nil
		output: nil
		error: nil
		errorPipelineStream: nil.
	output := shell outputAndError.
	^ [ output first , output last ]
		ensure: [ 
			shell
				closePipes;
				release ]