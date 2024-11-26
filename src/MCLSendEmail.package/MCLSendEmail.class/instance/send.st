as yet unclassified
send
	| command mailFilePath mailFile |
	
	command := WriteStream on: String new.

	command nextPutAll: self sendEmailBinary.
	
	command nextPutAll: ' -t '.
	to do: [:address | command nextPutAll: address. command space].

	cc ifNotEmpty: [
		command nextPutAll: ' -cc '.
		cc do: [:address | command nextPutAll: address. command space]].

	bcc ifNotEmpty: [
		command nextPutAll: ' -bcc '.
		bcc do: [:address | command nextPutAll: address. command space]].

	replyTo isNil ifFalse: [
		command nextPutAll: '-o reply-to=', replyTo
		].
	
	command
		nextPutAll: ' -f ', self from;
		space;
		nextPutAll: ' -u "', subject, '"';
		space;
		nextPutAll: ' -s ', self smtpServer;
		space.

	mailFile := MCLTempFile with: body.
		
	mailFilePath := mailFile filePath.
	
	command nextPutAll: ' -o message-file=', mailFilePath.
	
	self smtpUser ifNotNil: [command nextPutAll: ' -xu ', self smtpUser, ' -xp "', self smtpPassword, '"'].
	
	MCLSystemCommand runAsync: command contents.
	
	"TODO: Wie kann ich mailFile löschen, aber der MCLSystemCommand ist asynchron?"