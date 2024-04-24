accessing
smtpServer
	^ smtpServer ifNil: [self class smtpServer]