instance creation
run: aShellCommandString
	^ self new
		command: aShellCommandString;
		run;
		yourself