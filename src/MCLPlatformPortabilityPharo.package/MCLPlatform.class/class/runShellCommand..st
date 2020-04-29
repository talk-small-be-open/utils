as yet unclassified
runShellCommand: aShellCommandString
	| shellOutput exitCode pipeClass shell  |

	"shellOutput := (PipeableOSProcess command: aShellCommandString) output."

	Transcript
		cr;
		show: 'Runs system command: ';
		show: aShellCommandString;
		cr.

"	nbClass := Smalltalk 
		at: #NBMacShell
		ifAbsent: [nil].

	nbClass isNil ifFalse: [
		nbClass run: aShellCommandString.
	]."

	pipeClass := Smalltalk 
		at: #PipeableOSProcess
		ifAbsent: [nil].

	pipeClass isNil
		ifFalse: [
			| output |
			shell := pipeClass waitForCommand: aShellCommandString.
			[
				output := shell outputAndError.
				shellOutput := output first.
				exitCode := output last.
			] ensure: [
			shell
				closePipes;
				release ]]
		ifTrue: [
			shellOutput := '(command not run, no PipeableOSProcess)'].


		^shellOutput