as yet unclassified
runShellCommandOld: aShellCommandString
	| shellOutput shell  exitCode |

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

	Smalltalk 
		at: #PipeableOSProcess
		ifPresent: [:pipeClass |
			| output |
			shell := pipeClass waitForCommand: aShellCommandString.
			[
				output := shell outputAndError.
				shellOutput := output first.
				exitCode := output last.
			] ensure: [
			shell
				closePipes;
				release ]].

	Smalltalk at: #OSSUnixSubprocess ifPresent: [ :class |
		class new
			shellCommand: aShellCommandString;
"			arguments: #('-la' '/Users');"
			redirectStdout;
			runAndWaitOnExitDo: [ :process :outString |
				shellOutput := outString.
			]
	].
		
	shellOutput ifNil: [
		shellOutput := '(command not run, no PipeableOSProcess)'].

	^shellOutput