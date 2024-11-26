instance creation
with: aString
	^ self new
		writeAndClose: aString;
		yourself