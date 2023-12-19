examples
test2
	| sttTest |
	
	sttTest := '
		<HTML>
		<HEAD><TITLE>Another test</TITLE></HEAD>

		<?stt 
			out nextPutAll: ''This is a another test''.
			out nextPutAll: ''After all this ST code goes the final HTML closing tag''.
		
			15 timesRepeat: [ out nextPutAll: ''<P>This paragraph was manually send out</P>'' ]
		?>

		</HTML>'.

	^ (MCLSmalltalkTemplate on: sttTest) evaluateFor: 1.