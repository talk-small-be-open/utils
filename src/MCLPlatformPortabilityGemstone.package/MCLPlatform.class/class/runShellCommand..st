as yet unclassified
runShellCommand: aShellCommandString
	| result |
	Transcript
		cr;
		show: 'Perform on server: ';
		cr;
		show: aShellCommandString.
	result := System performOnServer: aShellCommandString.
	Transcript show: result asString.
	^ result