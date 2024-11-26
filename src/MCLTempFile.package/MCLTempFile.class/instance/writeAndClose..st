writing
writeAndClose: aString
	GRPlatform current
		writeFileStreamOn: self filePath
		do: [ :stream |
			stream nextPutAll: aString
		]
		binary: false