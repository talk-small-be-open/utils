instance creation
runAsync: aShellCommandString
	^ self new
		command: aShellCommandString;
		async: true;
		run;
		yourself