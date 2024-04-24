accessing
smtpServer
	^ SmtpServer ifNil: [self defaultSmtpServer]