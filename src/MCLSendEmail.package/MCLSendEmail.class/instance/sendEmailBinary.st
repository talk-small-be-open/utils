accessing
sendEmailBinary
	^ sendEmailBinary ifNil: [self class defaultSendEmailBinary]