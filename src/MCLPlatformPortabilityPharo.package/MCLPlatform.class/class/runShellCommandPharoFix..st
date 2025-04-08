as yet unclassified
runShellCommandPharoFix: aShellCommandString
	| shellOutput wrapperScriptPath cmd tmpFile args |

"	cmd := ALHelper asUtf8: aShellCommandString."
	cmd := aShellCommandString.
	
"	self ensureNonBullshitShellCommand: cmd."

	tmpFile := SIRTempFile new filePath.

	"FileSystem workingDirectory"
	wrapperScriptPath := 'execute-clean-subprocess.sh' asFileReference pathString.

	args := { '.'. tmpFile. cmd. }.


	Transcript
		cr;
		show: 'Runs system command: ';
		show: wrapperScriptPath;
		space;
		show: args;
		cr.

	"REMARK! Since we had sporadic problems with posix_spawn bad file descriptor errors,
	we do not rely on stdout redirect, but simple file writes via the executeCleanSubprocess.sh script."


	OSSUnixSubprocess new
		command: wrapperScriptPath;
		arguments: args;
		"redirectStdout;"
		runAndWait. 		

	shellOutput := GRPlatform current contentsOfFile: tmpFile binary: false.

	"TODO: remove tmpFile"

	^ shellOutput 	
