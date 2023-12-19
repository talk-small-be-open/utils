Host System Access
performOnServer2: aString
ConfigurationOfOSSubprocess new
	command: aString;
	
	redirectStdout;
	runAndWaitOnExitDo: [ :process :outString  |
		outString inspect
	]