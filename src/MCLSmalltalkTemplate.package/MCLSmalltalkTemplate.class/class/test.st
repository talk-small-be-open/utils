examples
test
	| sttTest |
	
	sttTest := '
		<HTML>
		<HEAD><TITLE><?stt= self class ?></TITLE></HEAD>

		<BODY>
			<TABLE>
				<?stt self to: 10 do: [ :each | ?>
			        <TR>
					   <TD><?stt= each ?></TD>
					   <TD><?stt= each * 2 ?></TD>
			        </TR>
			   	<?stt ] ?>
			</TABLE>
		</BODY>
		</HTML>'.

	^ (MCLSmalltalkTemplate on: sttTest) evaluateFor: 1.