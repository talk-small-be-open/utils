A MCLSendEmail is a helper for sending email via the shell with the tool sendEmail (see http://caspian.dotconf.net/menu/Software/SendEmail/).

Example, which will deliver via the localhost SMTP:

MCLSendEmail new
	to: 'somebody@somewhere.com';
	to: 'anotherbody@somewhereelse.org';
	from: 'me@home.com';
	subject: 'Testmail';
	body: 'Test test. it works!';
	send.
	
There are optional settings for specifying the SMTP-Account which you are using. See instance and class side methods named smtp* (smtpServer, ...).